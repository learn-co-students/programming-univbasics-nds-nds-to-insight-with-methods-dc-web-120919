require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #after finding the correct line, follow the nested AoHoAoH 
  
  total_value = {}
  director_counter = 0 
  
  while director_counter<nds.length do
    director_name = nds[director_counter][:name]
    
    total_value[director_name] = 0 #creates hash, sets to integer 
    #puts director_name
    #prints director's name 
    
    total_value[director_name] = gross_for_director_bypass(nds, director_counter)
    
    #puts "Gross total: #{gross_for_director_bypass(nds, director_counter)}"
    #puts "**** \n"
    
    director_counter += 1 
  end 
  # Be sure to return the result at the end!
  #puts total_value
  return total_value 
end

# same as below but specifically used with the loop counter in directors_totals
def gross_for_director_bypass(nds, director_counter)
  gross_total = 0 
  movie_counter = 0 
      while movie_counter<nds[director_counter][:movies].length do 
      
      #print out values to check the loop works  
      #puts nds[director_counter][:movies][movie_counter][:worldwide_gross]
      
      gross_total = gross_total + nds[director_counter][:movies][movie_counter][:worldwide_gross]
      movie_counter += 1 
    end 
  return gross_total
end

#takes a specific director hash and returns the total of gross 
def gross_for_director(nds)
  puts "*starting GFD"
  puts nds 
  gross_count = 0 
  i = 0 

  while i < nds[:movies].length do
    
    gross_count += nds[:movies][i][:worldwide_gross]
    i+= 1 
  end 
  return gross_count 
end