# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence(:name)  { |n| "Artist#{n}" }
  factory :artist do
    name
  end
end
