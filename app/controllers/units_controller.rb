class UnitsController < ApplicationController

    def si
      units = params[:units]

      if units.present?
          inputs = units.scan(/\w+|"|'|°/)

          si = inputs.map do |x|
              Unit.find_by(name: x).stdunit
          end

          unit_string = units.dup
          factor_string = units.dup

          inputs.each.with_index do |c, i|
              unit_string.scan(c).size.times do
                  unit_string.gsub!(c, si[i].name)
              end
          end

          inputs.each.with_index do |c, i|
              factor_string.scan(c).size.times do
                  factor_string.gsub!(c, "#{si[i].factor}")
              end
          end

          m_factor = eval(factor_string).round(14)

          render json: { unit_name: unit_string, multiplication_factor: m_factor }
      else
          render json: { status: 400, error: "Please enter in valid units" }
      end
    end



end

# retrieve all units inside a string
# find corresponding SI unit for each unit in query parameter
# si is an array of stdunit objects
# replace text in units string ---- units.gsub!(search string, replacement string)
# replace text in units string with associated factors
# plug factors into original equation and evaluate
