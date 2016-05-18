FactoryGirl.define do
  factory :point, class: "SatelicomPtv::Model::XLocate::Point" do
    skip_create
    point { create(:plain_point) }
  end
end