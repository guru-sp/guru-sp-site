# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :speaker, :class => 'Speaker' do
    name "Steve"
    nickname "Ste"
    twitter "SteOnTwitter"
  end
end
