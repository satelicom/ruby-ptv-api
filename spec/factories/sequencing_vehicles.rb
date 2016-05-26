FactoryGirl.define do
  factory :sequencing_vehicle, class: "SatelicomPtv::Model::XTour::SequencingVehicle" do |v|
    skip_create
    v['depotIdStart'] 17
    v.depotIdEnd 17
    v.isPreloaded false
    v.ignoreTransportPointServicePeriod false
    v.coDriverStatus "NEVER"
    v.toursMustFitIntoSingleOperatingInterval false
  end
end