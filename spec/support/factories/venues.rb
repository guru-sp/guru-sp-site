# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :venue do
      name "MyString"
      address "MyText"
      details "MyText"
      latitude 1.5
      longitude 1.5
    end
end