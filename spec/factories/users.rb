# spec/factories/discotheks.rb
require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.email {Faker::Internet.email}
    f.password 'TestenIstKacke'
    f.password_confirmation 'TestenIstKacke'
  end
end