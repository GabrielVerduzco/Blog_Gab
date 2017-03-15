require 'support/factory_girl'

FactoryGirl.define do
  factory :user, class: User do
    email "gab@tango.com"
    password "123456"
    password_confirmation "123456"
  end
end
