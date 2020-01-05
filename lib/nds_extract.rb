require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }



# def directors_totals(nds)
#   result = {}
#   index1 = 0 
#   while index1 < nds.length do 
#     dir_name = nds[index1][:name]
#     index2 = 0 
#       while index2 < nds[index][:name][index2][:worldwide_gross] do 
        
#     index1 += 1 
#     result[dir_name] = gross_for_director(director_data)

#   #nil
# end

def directors_totals(nds)
  directors_totals = {}
  index1 = 0 
  row_index = 0 
  while row_index < nds.length do 
    dir_name = nds[row_index][:name]
    column_index = 0 
  #^this is where we will pull the name from [:name]
    while column_index < nds[row_index][:movies].length do 
      gross_for_director(director_data)
      # puts "row is #{row_index} column is #{column_index}"
    end 
    directors_totals[dir_name] = gross_for_director(director_data)
    row_index += 1 
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


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
