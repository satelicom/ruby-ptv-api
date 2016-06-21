module RubyPtvApi
  module Model
    class PlainPoint < Base
      GEODECIMAL_COSTANT = 100000

      # longitude
      property 'x'
      # latitude
      property 'y'
      property 'z'
    end
  end
end