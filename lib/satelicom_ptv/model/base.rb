module SatelicomPtv
  module Model
    class Base < Hashie::Dash
      include Hashie::Extensions::Coercion
      include Hashie::Extensions::MergeInitializer
      include Hashie::Extensions::MethodAccess
      property '$type'
    end
  end
end