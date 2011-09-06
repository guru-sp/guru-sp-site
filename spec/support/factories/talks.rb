# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :talk do
      title "MyString"
      description "MyText"
      presenter_name "MyString"
      presenter_twitter "MyString"
      slides_link "MyString"
      video_link "MyString"
    end
end