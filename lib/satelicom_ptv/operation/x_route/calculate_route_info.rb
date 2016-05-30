module SatelicomPtv
  module Operation
    module XRoute
      class CalcutateRouteInfo < Base
        attr_reader :waypoints, :options, :exceptionPaths

        def initialize(waypoints:, options: [], exceptionPaths: [])
          @waypoints = waypoints
          @options = options
          @exceptionPaths = exceptionPaths
        end

        def ptv_function
          'calculateRouteInfo'
        end

        def params
          { 
            waypoints: waypoints,
            options: options,
            exceptionPaths: exceptionPaths
          }
        end

        protected

          def response_class
            SatelicomPtv::Model::XRoute::RouteInfo
          end
      end
    end
  end
end