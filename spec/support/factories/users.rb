# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :user do |f|
  f.email 'chuck@norris.com'
  f.password 'abc123'
end