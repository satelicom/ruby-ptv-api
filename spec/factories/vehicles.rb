FactoryGirl.define do
  factory :vehicle, class: "SatelicomPtv::Model::XTour::SequencingVehicle" do
    skip_create
    depotIdStart 17
    depotIdEnd 17
    isPreloaded false
    dimaId 1
    ignoreTransportPointServicePeriod false
    coDriverStatus "NEVER"
    toursMustFitIntoSingleOperatingInterval false
  end
end