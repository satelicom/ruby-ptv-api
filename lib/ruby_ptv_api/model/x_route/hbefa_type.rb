module RubyPtvApi
  module Model
    module XRoute
      class HBEFAType < RubyPtvApi::Model::Base
        property 'version', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::HBEFA_VERSION, value)
        end
      end
    end
  end
end