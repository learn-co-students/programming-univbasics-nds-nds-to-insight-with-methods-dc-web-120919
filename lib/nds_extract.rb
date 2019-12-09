require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  counter = 0 
  while counter < nds.length do
    counter2 = 0
    total_worldwide_gross = 0
    while counter2 < nds[counter][:movies].length  do
      total_worldwide_gross += nds[counter][:movies][counter2][:worldwide_gross]
      counter2 += 1
    end
    result[nds[counter][:name]] = total_worldwide_gross
    counter += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as 

def gross_for_director(director_data)
  total = 0
  counter = 0
  while counter < director_data[:movies].length do
    total += director_data[:movies][counter][:worldwide_gross]
    counter += 1
  end
  total
end


