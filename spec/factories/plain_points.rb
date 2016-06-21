FactoryGirl.define do
  factory :plain_point, class: "RubyPtvApi::Model::PlainPoint" do
    skip_create
    x 1192353
    y 4541272
  end

  factory :leanbit_plain_point, class: "RubyPtvApi::Model::PlainPoint" do
    skip_create
    x 1191893
    y 4541299
  end

  factory :satelicom_plain_point, class: "RubyPtvApi::Model::PlainPoint" do
    skip_create
    x 1157538
    y 4554948
  end

  factory :venice_plain_point, class: "RubyPtvApi::Model::PlainPoint" do
    skip_create
    x 1231898
    y 4543764
  end
end