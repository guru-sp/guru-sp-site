# encoding: UTF-8
# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  sequence :meeting do |n|
    "#{n}o encontro"
  end

  factory :meeting do |f|
    f.title FactoryGirl.generate :meeting
    f.description "Encontro especial"
    f.date "2011-19-11 9:30:00"
  end
end

