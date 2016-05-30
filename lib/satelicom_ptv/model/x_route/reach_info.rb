module SatelicomPtv
  module Model
    module XRoute
      class ReachInfo < SatelicomPtv::Model::Base
        property 'reachable'
        property 'routeInfo'
        property 'branchNode'
        
        coerce_key :routeInfo ,  RouteInfo
        coerce_key :branchNode,  UniqueGeoID
      end
    end
  end
end