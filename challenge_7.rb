# Challenge 7:
# Write a table-lookup function: Given a CSV file with headings, write a program where you give
# it a column heading and a value and it prints out the entire row where that column has that value
require "csv"

def table_lookup(column_name, value)
  filepath = "data.csv"
  found = false
  CSV.foreach(filepath,
    encoding: 'iso-8859-1:utf-8',
    headers: true,
    header_converters: :symbol) do |row|
    if row[:"#{column_name}"].downcase == value.downcase
      p row
      found = true
    end
  end
  p "Ivalid data" unless found
end

table_lookup("age", "39")
table_lookup("occupation", "IpT")
