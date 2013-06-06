# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sponsor, :class => 'Sponsors' do
    name "Caelum"
    url "http://www.caelum.com.br"
  end
end
