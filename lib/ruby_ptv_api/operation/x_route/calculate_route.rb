module RubyPtvApi
  module Operation
    module XRoute
      class CalcutateRoute < Base
        attr_reader :waypoints, :options, :exceptionPaths, :details

        def initialize(waypoints:, options:, exceptionPaths: , details:)
          @waypoints = waypoints
          @options = options
          @exceptionPaths = exceptionPaths
          @details = details
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
            RubyPtvApi::Model::XRoute::Route
          end
      end
    end
  end
end