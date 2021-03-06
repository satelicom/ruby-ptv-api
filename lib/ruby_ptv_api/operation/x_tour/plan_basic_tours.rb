module RubyPtvApi
  module Operation
    module XTour
      class PlanBasicTours < Base
        attr_reader :transport_orders, :depots, :fleet

        def initialize(transport_orders:, depots:, fleet:)
          @transport_orders = transport_orders
          @depots = depots
          @fleet = fleet
        end

        def ptv_function
          'planBasicTours'
        end

        def planning_params
          RubyPtvApi::Model::XTour::StandardParams.new({
            "coDriverTransportPointsInSeparateTours" => false,
            'distanceMatrixCalculation' => [
                RubyPtvApi::Model::XTour::DistanceMatrixByRoad.new({
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
            fleet: fleet,
            planningParams: planning_params,
            inputPlan: nil
          }
        end

        protected

          def response_class
            RubyPtvApi::Model::XTour::Plan
          end
      end
    end
  end
end