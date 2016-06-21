FactoryGirl.define do
  factory :depot, class: "RubyPtvApi::Model::XTour::Depot" do
    skip_create
    id 17
    location { 
      RubyPtvApi::Model::Point.new(
        {
          'point' => RubyPtvApi::Model::PlainPoint.new(
            'x' => 12318994, 
            'y' => 45437802
          )
        }
      ) 
    }
  end
end