FactoryGirl.define do
  sequence(:name)  { |n| "Festival#{n}" }
  factory :festival do
    name
  end
end