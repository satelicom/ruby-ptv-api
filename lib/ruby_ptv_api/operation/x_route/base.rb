module RubyPtvApi
  module Operation
    module XRoute
      class Base < RubyPtvApi::Base
        attr_reader :search_option_base_array, :sort_option_array, :result_field_array

        def ptv_path
          'xroute/rs/XRoute'
        end

        def call #(options: nil, sorting: nil, additional_fields: nil)
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