FactoryGirl.define do
  factory :item do
    name Faker::Hipster.sentence(3)
    time_remaining 7
    user
  end
end
