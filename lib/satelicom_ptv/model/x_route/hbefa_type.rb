module SatelicomPtv
  module Model
    module XRoute
      class HBEFAType < SatelicomPtv::Model::Base
        property 'version', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::HBEFA_VERSION, value)
        end
      end
    end
  end
end