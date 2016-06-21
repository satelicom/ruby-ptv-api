module RubyPtvApi
  module Model
    class PlainPoint < Base
      # longitude
      property 'x', transform_with: ->(value) do 
        if value.to_i.to_s.size != 7
          raise WrongParameterFormat.new("longitude must be a integer and have size 7 but #{value}")
        end
        value
      end 
      # latitude
      property 'y', transform_with: ->(value) do 
        if value.to_i.to_s.size != 7
          raise WrongParameterFormat.new("latitude must be a integer and have size 7 but #{value}")
        end
        value
      end  
      property 'z'
    end
  end
end