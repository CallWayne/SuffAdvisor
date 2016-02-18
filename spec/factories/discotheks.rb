# spec/factories/discotheks.rb
require 'faker'

FactoryGirl.define do
  factory :discothek do |f|
    f.title { Faker::Name.name  }
    f.description { Faker::Lorem.sentence }
    f.place { Faker::Address.city }
    f.address { Faker::Address.street_address }
  end
end