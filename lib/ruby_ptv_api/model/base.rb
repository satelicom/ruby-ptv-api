module RubyPtvApi
  module Model
    class Base < Hashie::Dash
      # Do not change include order
      include Hashie::Extensions::Dash::PropertyTranslation
      include Hashie::Extensions::MethodAccess
      include Hashie::Extensions::Coercion
      
      property '$type', default: ->(obj) { obj.class.name.split(':').last }
    end
  end
end