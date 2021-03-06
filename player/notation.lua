local scheduler = require 'scheduler'

local tempo = 100

local function note(letter, octave)
    local notes = {
        C = 0,
        Cs = 1,
        D = 2,
        Ds = 3,
        E = 4,
        F = 5,
        Fs = 6,
        G = 7,
        Gs = 8,
        A = 9,
        As = 10,
        B = 11
    }
    local notes_per_octave = 12
    return (octave + 1) * notes_per_octave + notes[letter]
end

local function duration(value)
    print('duration with ' ..  value)
    local quarter = 60 / tempo
    local durations = {
        h = 2.0,
        q = 1.0,
        ed = 0.75,
        e = 0.5,
        s = 0.25
    }
    return durations[value] * quarter
end

function parse_note(s)
    local letter, octave, value = string.match(s, '([A-Gs]+)(%d+)(%a+)')
    if not (letter and octave and value) then
        return nil
    end
    print('Parse note from ' ..  s)
    return {
        note = note(letter, octave),
        duration = duration(value)
    }
end

NOTE_DOWN = 0x90
NOTE_UP = 0x80
VELOCITY = 0x7f

function play(note, duration)
    print('Playing ' .. note .. ' with ' ..  duration)
    midi_send(NOTE_DOWN, note, VELOCITY)
    scheduler.wait(duration)
    midi_send(NOTE_UP, note, VELOCITY)
end

local mt = {
    __index = function(t, s)
            local result = parse_note(s)
            return result or rawget(t, s)
        end,
}

setmetatable(_G, mt)

local function set_tempo(bpm)
    tempo = bpm
end

function part(t)
    print('part')
    local function play_part()
        for i = 1, #t do
            print('Playing part ' .. t[i].note .. ' and ' .. t[i].duration)
            play(t[i].note, t[i].duration)
        end
    end
    scheduler.schedule(0.0, coroutine.create(play_part))
end

local function go()
    print('go')
    scheduler.run()
end

return {
    parse_note = parse_note,
    play = play,
    part = part,
    set_tempo = set_tempo,
    go = go
}