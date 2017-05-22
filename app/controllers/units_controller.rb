class UnitsController < ApplicationController
    
  def si
      units = params[:units]
   
# retrieve all units inside a string
          
      inputs = units.scan(/\w+|"|'|°/)

      
#      inputs = units.split("/")
#      raise inputs.inspect
     
# find the corresponding SI unit for each unit in string, store in array
# si is an array of stdunit objects
      
      si = inputs.map do |x|
          puts "><><><><><> #{x.inspect}"
          Unit.find_by(name: x).stdunit
      end  
      
# copy of original string for units
      
      unit_string = units.dup 
      
      
# copy of original string for factors
      
      factor_string = units.dup 
      
      
# replace all words in original string with si unit names
      
      inputs.each.with_index do |c, i|
          unit_string.scan(c).size.times do
              unit_string.gsub!(c, si[i].name)
          end
      end

      
      
# replace all words in original string with si unit factors
      
      inputs.each.with_index do |c, i|
          factor_string.scan(c).size.times do
              factor_string.gsub!(c, "#{si[i].factor}")
          end
      end
   

      
# MATH - evaluate the factors in original string format
      
      m_factor = eval(factor_string).round(14)
      
      render json: { unit_name: unit_string, multiplication_factor: m_factor }
            
  end

    

end

# retrieve all units inside a string
# find corresponding SI unit for each unit in query parameter
# si is an array of stdunit objects
# replace text in units string ---- units.gsub!(search string, replacement string)
# replace text in units string with associated factors
# plug factors into original equation and evaluate