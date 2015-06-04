FactoryGirl.define do
  factory :festival do
    sequence(:name)  { |n| "Festival #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
 
  end
end