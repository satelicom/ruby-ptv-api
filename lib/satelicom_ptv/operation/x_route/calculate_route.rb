module SatelicomPtv
  module Operation
    module XTour
      class CalcutateRoute < Base
        attr_reader :waypoints, :options, :exceptionPaths, :details

        def initialize(waypoints:, options:)
          @waypoints = waypoints
          @options = options
        end

        def ptv_function
          'calculateRoute'
        end

        def params
          { 
            waypoints: waypoints,
            options: options,
            exceptionPaths: exceptionPaths,
            details: details
          }
        end

        protected

          def response_class
            SatelicomPtv::Model::XRoute::Route
          end
      end
    end
  end
end