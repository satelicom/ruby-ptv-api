module SatelicomPtv
  module Operation
    module XTour
      class Base < SatelicomPtv::Base
        attr_reader :search_option_base_array, :sort_option_array, :result_field_array

        def ptv_path
          'xtour/rs/XTour'
        end

        def call(options: nil, sorting: nil, additional_fields: nil)
          extra_params(options, sorting, additional_fields)
          response = post(params)
          parse_response(response)
        end

        def options=(opts)
          raise 'Not implemented'
          @search_option_base_array = opts
        end

        def options
          @search_option_base_array || []
        end

        def sorting=(array)
          raise "Required SortOption Model class" unless array.map{|k| k.is_a?(SatelicomPtv::Model::XLocate::SortOption)}.inject(:&)
          @sort_option_array = array
        end

        def sorting
          @sort_option_array || []
        end

        def additional_fields=(array)
          check_additional_fields(array)
          @result_field_array = array
        end

        def additional_fields 
          @result_field_array || []
        end

        def extra_params(opts, sort, fields)
          self.options = opts if opts
          self.sorting = sort if sort
          self.additional_fields = fields if fields
        end

        protected

          def response_class
            SatelicomPtv::Model::XLocate::AddressResponse
          end

        private 

          def parse_response(response)
            if response.is_a? Array
              multiple_response(response)
            else
              single_response(response)
            end
          end

          def single_response(response)
            response_class.new(response)
          end

          def multiple_response(responses)
            lists = []
            responses.each do |response|
              lists << response_class.new(response)
            end
            lists
          end

          def check_additional_fields(values)
            values.each do |value|
              unless SatelicomPtv::Constant::RESULT_FIELD.include?(value.to_sym)
                raise WrongParameterFormat.new("Value #{value} is not a additional fields accepted value #{SatelicomPtv::Constant::RESULT_FIELD}")
              end
            end
          end 
      end
    end
  end
end