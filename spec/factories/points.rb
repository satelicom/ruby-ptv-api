FactoryGirl.define do
  factory :point, class: "RubyPtvApi::Model::Point" do
    skip_create
    point { create(:plain_point) }
  end
end