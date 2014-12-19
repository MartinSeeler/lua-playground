book = {
    title = 'The Hitchhiker\'s Guide to the Galaxy',
    author = 'Douglas Adams'
}

-- access with dotted notation
print(book.title)

-- add new fields on the fly
book.country = 'United Kingdom'
print(book.country)

-- use brackets to set or access fields
book['written in'] = 'english'
print(book['written in'])
book[1337.42] = '0-330-25864-8'
print(book[1337.42])

-- clear them with nil
book.title = nil
print(not book.title)

function print_table(table)
    for k, v in pairs(table) do
        print(k .. ' : ' ..v)
    end
end

print_table(book)