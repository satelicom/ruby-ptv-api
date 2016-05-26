module SatelicomPtv
  module Operation
    module XTour
      class PlanBasicTours < Base
        attr_reader :transport_orders, :depots, :vehicle

        def initialize(transport_orders:, depots:, fleet:)
          @transport_orders = transport_orders
          @depots = depots
          @fleet = fleet
        end

        def ptv_function
          'plantBasicTours'
        end

        # def sequencing_params
        #   SatelicomPtv::Model::XTour::SequencingParams.new({
        #     'coDriverTransportPointsInSeparateTours' => false,
        #     'distanceMatrixCalculation' => 
        #       [
        #         SatelicomPtv::Model::XTour::DistanceMatrixByRoad.new({
        #           'dimaId' => 1,
        #           'deleteBeforeUsage' => true,
        #           'deleteAfterUsage' => true
        #         })                
        #       ]
        #   })
        # end

        def params
          { 
            transportOrders: transport_orders,
            depots: depots,
            fleet: fleet,
            planningParams: planning_params,
            inputPlan: nil
          }
        end
      end
    end
  end
end