FactoryGirl.define do
  factory :item do
    name Faker::Hipster.sentence(3)
    #complete false
    user
  end
end
