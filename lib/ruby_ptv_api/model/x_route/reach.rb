module RubyPtvApi
  module Model
    module XRoute
      class Reach < RubyPtvApi::Model::Base
        property 'reachInfo'
        property 'additional'

        coerce_key :reachInfo,  Array[ReachInfo]
      end
    end
  end
end