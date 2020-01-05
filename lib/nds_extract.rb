require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  directors_totals = {}
  index1 = 0 
  while index1 < nds.length do 
    dir_name = nds[index1][:name]
    directors_totals[dir_name] = gross_for_director(nds[index1])
    index1 += 1 
  end 
 puts directors_totals
 directors_totals
end


def gross_for_director(director_data)
  total = 0 
  index = 0 
  while director_data[:movies][index] do 
    total += director_data[:movies][index][:worldwide_gross]
    index += 1 
  end 
  total 
end

directors_totals(directors_database)

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
