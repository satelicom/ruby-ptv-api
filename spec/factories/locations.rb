FactoryGirl.define do
  factory :location, class: "RubyPtvApi::Model::XLocate::Location" do
    skip_create
    coordinate { create(:point) }
  end
end