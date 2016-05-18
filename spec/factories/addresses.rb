FactoryGirl.define do
  factory :address, class: "SatelicomPtv::Model::XLocate::Address" do
    skip_create
    country   'I'
    postCode   ''
    city   'Padova'
    city2   ''
    street   'Via prima strada 11'
    houseNumber   ''
  end
end