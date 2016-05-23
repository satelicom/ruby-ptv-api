FactoryGirl.define do
  factory :plain_point, class: "SatelicomPtv::Model::PlainPoint" do
    skip_create
    x 1192353
    y 4541272
  end

  factory :leanbit_plain_point, class: "SatelicomPtv::Model::PlainPoint" do
    skip_create
    x 11918931
    y 45412991
  end

  factory :satelicom_plain_point, class: "SatelicomPtv::Model::PlainPoint" do
    skip_create
    x 11575380
    y 45549488
  end
end