require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}

#iterate through the keys (:color, :gender, and :lives) first
#line 8 block parameters returns the keys inside of the hash and values of :color, :gender, :lives 
  
  data.each do |first_order_keys, value|
  
#This block will iterate over the second order keys and return the elements in the arrays (that are the values) 
    
    value.each do |second_order_keys, array|
      
#Then we want to iterate over the array
  
      array.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        
 #The next line of code will assign the first order keys inside the name value hashes to an empty arrays
 
        if pigeon_list[name][first_order_keys] == nil
          pigeon_list[name][first_order_keys] = []
        end
        
  #Now we are going to push the values from the second order keys into the empty arrays
        
        pigeon_list[name][first_order_keys].push(second_order_keys.to_s)
      end  
    end  
  
  end  
  pigeon_list
end
