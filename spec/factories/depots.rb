FactoryGirl.define do
  factory :depot, class: "SatelicomPtv::Model::XTour::Depot" do
    skip_create
    id 17
    location { 
      SatelicomPtv::Model::Point.new(
        {
          'point' => SatelicomPtv::Model::PlainPoint.new(
            'x' => 12318994, 
            'y' => 45437802
          )
        }
      ) 
    }
  end
end