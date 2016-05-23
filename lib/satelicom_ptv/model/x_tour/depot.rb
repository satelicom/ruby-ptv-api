module SatelicomPtv
  module Model 
    module XTour
      # Attribute Name      Type        Description
      # id                  int         The unique key to identify the logistic point clearly (> 0). Transport points, depots and even transport orders can use the same keys, but they must be unique within one object type.
      # description         String      An additional field to describe the logistic point (optional); not relevant for tour planning.
      # location            Point       The location of the logistic point (required).
      # openingIntervals    Interval[]  Spans the opening intervals within all activities at the logistic point must be carried out (optional). Usually this activity is up- and unloading. In case of a transport point the vehicle-independent service is included. If more than one opening interval is defined, the intervals have to be in ascending order and they must not overlap. Omitting this attribute means that the activities at the logistic point can be carried out at any time.
      # siteId              Integer     The unique key to identify the transport points belonging together in a logical way. For example all logistic points in one premises get the same ID (> 0, optional). These logistic points do not need the same location, but usually they are nearby. This ID is relevant for the service period calculation.
      # extraSitePeriod     Integer     Extra service period at the transport point in case of a given SiteId ([sec], >= 0). If there are several consecutive logistic points in a tour referring to logistic points with the same siteId, the extra service period would only be considered at the first logistic point of that row (for example the period for a security check at the gate of the same premises). In case of different extra site periods, the maximum value is relevant for the first logistic point.
      # uploadingFunctionId Integer     The unique key to identify the related uploading function clearly (> 0, optional). This function calculates the uploading period at this point depending on the pickup quantities. Omitting this attribute means that the uploading period at this point is 0. If there are no pickupQuantities defined, the resulting period will be 0. So even the fixed periods will be omitted.
      # unloadingFunctionId Integer     The unique key to identify the related unloading function clearly (> 0, optional). This function calculates the unloading period at this point depending on the delivery quantities. Omitting this attribute means that the unloading period at this point is 0. If there are no deliveryQuantities defined, the resulting period will be 0. So even the fixed periods will be omitted.

      class Depot < SatelicomPtv::Model::Base
        property 'id', required: true
        property 'description'
        property 'location', required: true
        property 'openingIntervals'
        property 'siteId'
        property 'extraSitePeriod'
        property 'uploadingFunctionId'
        property 'unloadingFunctionId'
        
        coerce_key :location, SatelicomPtv::Model::Point
        coerce_key :openingIntervals, Array[Interval] # Do not work if String 'resultList'
      end
    end
  end
end