module SatelicomPtv
  module Operation
    module XTour
      class PlanSequence < Base
        attr_reader :transport_orders, :depots, :vehicle

        def initialize(transport_orders:, depots:, vehicle:)
          @transport_orders = transport_orders
          @depots = depots
          @vehicle = vehicle
          @dimaId = 1
        end

        def ptv_function
          'planSequence'
        end

        def sequencing_params
          SatelicomPtv::Model::XTour::SequencingParams.new({
            'coDriverTransportPointsInSeparateTours' => false,
            'distanceMatrixCalculation' => 
              [
                SatelicomPtv::Model::XTour::DistanceMatrixByRoad.new({
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

        protected

          def response_class
            SatelicomPtv::Model::XTour::SequencingPlan
          end

        
      end
    end
  end
end