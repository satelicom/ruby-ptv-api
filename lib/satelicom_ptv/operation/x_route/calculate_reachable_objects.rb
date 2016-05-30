module SatelicomPtv
  module Operation
    module XRoute
      class CalcutateReachableObjects < Base
        attr_reader :sink, :binaryPathDesc, :locations, :options, :expansionDesc

        def initialize(binaryPathDesc:, locations:, expansionDesc:, sink: nil, options: [])
          @sink = sink
          @binaryPathDesc = binaryPathDesc
          @locations = locations
          @options = options
          @expansionDesc = expansionDesc
        end

        def ptv_function
          'calculateReachableObjects'
        end

        def params
          prms = { 
            binaryPathDesc: binaryPathDesc,
            locations: locations,
            options: options,
            expansionDesc: expansionDesc,
          }
          prms.merge!({ sink: sink }) if sink
          prms
        end

        protected

          def response_class
            SatelicomPtv::Model::XRoute::Reach
          end
      end
    end
  end
end