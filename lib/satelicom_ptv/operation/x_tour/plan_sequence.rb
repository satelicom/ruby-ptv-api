module SatelicomPtv
  module Operation
    module XTour
      class PlanSequence < Base
        attr_reader :transport_orders, :depots, :vehicle

        def initialize(transport_orders:, depots:, vehicle:)
          @transport_orders = transport_orders
          @depots = depots
          @vehicle = vehicle
        end

        def ptv_function
          'plantSequence'
        end

        def sequencing_params
          SequencingParams.new({
            'coDriverTransportPointsInSeparateTours': false,
            'distanceMatrixCalculation' => 
              [
                DistanceMatrixByRoad.new({
                  'dimaId' => 1,
                  'deleteBeforeUsage' => true,
                  'deleteAfterUsage' => true
                })                
              ]
          })
        end

        def params
          { 
            transportOrders: transport_orders,
            depots: depots,
            vehicle: vehicle,
            sequencingParams: sequencing_params,
            inputPlan: nil
          }
        end
      end
    end
  end
end