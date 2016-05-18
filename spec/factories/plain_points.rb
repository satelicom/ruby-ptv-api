FactoryGirl.define do
  factory :plain_point, class: "SatelicomPtv::Model::PlainPoint" do
    skip_create
    x 1325212.2402
    y 5680393.5276
  end
end