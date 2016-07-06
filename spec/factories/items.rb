FactoryGirl.define do
  factory :item do
    name Faker::Hipster.sentence(3)
    user
  end
end
