# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  sequence :email do |n|
    "pessoa#{n}@email.com"
  end

  sequence :nickname do |n|
    "pessoa#{n}"
  end

    sequence :github do |n|
    "github#{n}"
  end

  factory :user do
    email FactoryGirl.generate :email
    nickname FactoryGirl.generate :nickname
    password  'senhabemgrande123'
    admin false
  end

  factory :admin, :class => User do
    email FactoryGirl.generate :email
    nickname FactoryGirl.generate :nickname
    password  'senhabemdificil'
    admin true
  end
end

