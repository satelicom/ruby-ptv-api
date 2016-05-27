module SatelicomPtv
  module Operation
    module XTour
      class Base < SatelicomPtv::Base
        attr_reader :search_option_base_array, :sort_option_array, :result_field_array

        def ptv_path
          'xtour/rs/XTour'
        end

        def call
          response = post(params)
          parse_response(response)
        end

        protected

          def response_class
            raise 'not implemented'
          end
      end
    end
  end
end