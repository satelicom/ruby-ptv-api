FactoryGirl.define do
  factory :location, class: "SatelicomPtv::Model::Location" do
    skip_create
    coordinate { create(:point) }
  end
end