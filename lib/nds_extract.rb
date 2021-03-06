$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  director_data[:movies].map { |movie| movie[:worldwide_gross] }.reduce(:+)
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nds.each { |director| 
    result[director[:name]] = gross_for_director(director)
  }
  return result
end
