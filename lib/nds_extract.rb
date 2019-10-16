require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  
  #pp nds 
  total_value = {}
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #after finding the correct line, follow the nested AoHoAoH 
  
  director_counter = 0 
  
  while director_counter<nds.length do
    director_name = nds[director_counter][:name]
    
    total_value[director_name] = 0 #creates hash, sets to integer 
    puts director_name
    #prints director's name 
    
    total_value[director_name] = gross_for_director(nds, director_counter)
    
    puts "Gross total: #{gross_for_director(nds, director_counter)}"
    puts "**** \n"
    
    director_counter += 1 
  end 
  # Be sure to return the result at the end!
  puts total_value
  return total_value 
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(nds, director_counter)
  gross_total = 0 
  movie_counter = 0 
      while movie_counter<nds[director_counter][:movies].length do 
      
      #print out values to check the loop works  
      puts nds[director_counter][:movies][movie_counter][:worldwide_gross]
      
      gross_total = gross_total + nds[director_counter][:movies][movie_counter][:worldwide_gross]
      movie_counter += 1 
    end 
  return gross_total
end
