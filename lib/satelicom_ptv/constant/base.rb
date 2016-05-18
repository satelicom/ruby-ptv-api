module SatelicomPtv
  module Constant
    class Base
      AVAILABILITY = {}

      def available?(name, klass_name)
        return true if AVAILABILITY.empty? or AVAILABILITY[name].empty?
        AVAILABILITY[name].include?(name)
      end
    end
  end
end