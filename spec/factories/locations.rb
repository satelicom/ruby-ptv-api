FactoryGirl.define do
  factory :location, class: "SatelicomPtv::Model::XLocate::Location" do
    skip_create
    coordinate { create(:point) }
  end
end