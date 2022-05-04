# Challenge 2:
# Write a solution to find the character that has the highest number of
# occurrences within a certain string, ignoring
# case. If there is more than one character with equal highest occurrences,
# return the character that appeared first
# within the string.
# For example:
#  Input: "Character"
#  Output: c

# +++++++++++++++++ 1st Approach using Array ++++++++++++++++++++++++++++++++++++
def highest_occurrence(string)
  string = string.downcase
  char_array = string.chars.uniq
  count = 1
  result_char = ""
  char_array.each do |char|
    if string.count(char) > count
      result_char = char
      count = string.count(char)
    end
  end
    result_char
end

# +++++++++++++++++ 2nd Approach using Hash ++++++++++++++++++++++++++++++++++++
def highest_occurrence_hash(string)
  string = string.downcase
  char_array = string.chars.uniq
  hash = {}
  char_array.each {|char| hash["#{char}"] = string.count(char)}
  max = hash.values.max
  hash.each { |key, value| return key if value == max }
end

p highest_occurrence("Character")
p highest_occurrence_hash("Character")
p highest_occurrence("catCtharacter")
p highest_occurrence_hash("catCtharacter")
