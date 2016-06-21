module RubyPtvApi
  module Operation
    module XLocate
      class Base < RubyPtvApi::Base
        attr_reader :search_option_base_array, :sort_option_array, :result_field_array

        def ptv_path
          'xlocate/rs/XLocate'
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
          raise "Required SortOption Model class" unless array.map{|k| k.is_a?(RubyPtvApi::Model::XLocate::SortOption)}.inject(:&)
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
            RubyPtvApi::Model::XLocate::AddressResponse
          end

        private 

          def check_additional_fields(values)
            values.each do |value|
              unless RubyPtvApi::Constant::RESULT_FIELD.include?(value.to_sym)
                raise WrongParameterFormat.new("Value #{value} is not a additional fields accepted value #{RubyPtvApi::Constant::RESULT_FIELD}")
              end
            end
          end 
      end
    end
  end
end