module SatelicomPtv
  module Model
    class Base < Hashie::Dash
      #include Hashie::Extensions::MergeInitializer
      include Hashie::Extensions::MethodAccess
      include Hashie::Extensions::Dash::Coercion
    
      property '$type'
    end
  end
end