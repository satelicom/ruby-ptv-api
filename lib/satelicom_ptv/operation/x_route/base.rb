module SatelicomPtv
  module Operation
    module XRoute
      class Base < SatelicomPtv::Base
        attr_reader :search_option_base_array, :sort_option_array, :result_field_array

        def ptv_path
          'xtour/rs/XRoute'
        end

        def call(options: nil, sorting: nil, additional_fields: nil)
          extra_params(options, sorting, additional_fields)
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