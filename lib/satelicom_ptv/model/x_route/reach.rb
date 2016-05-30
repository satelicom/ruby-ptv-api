module SatelicomPtv
  module Model
    module XRoute
      class Reach < SatelicomPtv::Model::Base
        property 'reachInfo'
        property 'additional'

        coerce_key :reachInfo,  Array[ReachInfo]
      end
    end
  end
end