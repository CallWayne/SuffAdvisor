# spec/factories/events.rb
require 'faker'

FactoryGirl.define do
  factory :event do |f|
    f.title { Faker::Name.name  }
    f.description { Faker::Lorem.sentence }
    f.place { Faker::Address.city }
    f.address { Faker::Address.street_address }
    f.date { Faker::Date.between(2.days.ago, Date.today) }
    f.time { Faker::Time.between(DateTime.now - 1, DateTime.now) }
  end
end