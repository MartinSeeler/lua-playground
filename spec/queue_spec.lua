require 'queue'

describe("The Queue", function()
  
  it("can be created", function()
    local queue = Queue:new()
    assert.truthy(queue)
  end)

  describe("appending", function()
    pending("I should finish this test later")
    local queue = Queue:new()
    assert.falsy(queue:remove())
    spy.on(queue, "add")
    queue:add("foo")
    assert.spy(queue.add).was.called_with("foo")
  end)

  describe("removing", function()
    pending("I should finish this test later")
    local queue = Queue:new()
    spy.on(queue, "add")
    queue:add("foo")
    assert.spy(queue.add).was.called_with("foo")
    local foo = queue:remove()
    assert.spy(queue.remove).was.called()

  end)

end)