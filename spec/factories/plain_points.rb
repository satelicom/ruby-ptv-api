FactoryGirl.define do
  factory :plain_point, class: "SatelicomPtv::Model::XLocate::PlainPoint" do
    skip_create
    x 1192353
    y 4541272

  end
end