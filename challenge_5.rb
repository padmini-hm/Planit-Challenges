# Challenge 5:
# Given a list of people (each person has attributes like name, DOB, nationality) and in this world two people can’t
# have the exact same name then a user can:
# * Obtain a list of duplicates from the original list
# * Alter the original list and remove duplicates
# * Calculate the average age
# * Find all the people with age less than N
# * Obtain a list of unique countries

# class people
#   def initialize(attributes{})
#     @name = :name
#     @DOB = :DOB
#     @nationality = :nationality
#   end
# end
require 'date'
original_list = [{
  name: 'Padmini',
  DOB: '1983-01-02',
  nationality: 'Indian'
  },
  {
    name: 'Shravya',
    DOB: '2009-05-25',
    nationality: 'Indian'
  },
  {
    name: 'Shravya',
    DOB: '2009-05-25',
    nationality: 'Indian'
  }]

  def select_people_on_age(altered_list, age)
    altered_list.select {|person| (Date.today - Date.new(person[:DOB].to_i)).fdiv(365).to_i < age}
  end

  p "Original list #{original_list}"

  # * Obtain a list of duplicates from the original list
  duplicate_list = original_list.group_by {|person| person[:name]}
  duplicate_list.select! {|key, value| value.length > 1}
  p "Duplicate list #{duplicate_list.values}"

  # * Alter the original list and remove duplicates
  altered_list = original_list.uniq {|person| person[:name]}
  p "Altered list #{altered_list}"

  # * Calculate the average age
  current_date = Date.today
  age = []
  altered_list.each {|person| age << (current_date - Date.new(person[:DOB].to_i))}
  avg_age = (age.sum).fdiv(age.length)
  p "Average age is #{avg_age.fdiv(365).to_i}"

  # * Find all the people with age less than N
  N = 30
  p "People with age less than #{N} are #{select_people_on_age(altered_list, N)}"

  # * Obtain a list of unique countries
  unique_countries = []
  altered_list.each {|person|  unique_countries << person[:nationality]}
p "list of unique country #{unique_countries.uniq}"
