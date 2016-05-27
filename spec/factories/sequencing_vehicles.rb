FactoryGirl.define do
  factory :sequencing_vehicle, class: "SatelicomPtv::Model::XTour::SequencingVehicle" do 
    depotIdStart 17
    depotIdEnd 17
    isPreloaded false
    ignoreTransportPointServicePeriod false
    coDriverStatus "NEVER"
    toursMustFitIntoSingleOperatingInterval false
  end
end