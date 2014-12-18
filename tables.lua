function using_tables(table)
    print('The medium one costs ' .. table.medium)
end

using_tables({low=5.00, medium=10, high=15})
-- we can ignore the brackets here
using_tables{low=5.00, medium=10, high=15}