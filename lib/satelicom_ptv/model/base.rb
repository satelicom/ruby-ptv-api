module SatelicomPtv
  module Model
    class Base < Hash
      include Hashie::Extensions::Coercion
      include Hashie::Extensions::MergeInitializer
      include Hashie::Extensions::MethodAccess

    end
  end
end