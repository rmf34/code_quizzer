# -*- coding: utf-8 -*-
FactoryGirl.define do
  sequence :user_email do |n|
    "codequizzer-#{n}@test.test"
  end

  sequence :user_name do |n|
    "codequizzer-#{n}"
  end

  factory :user do
    email { generate(:user_email) }
    username { generate(:user_email) }
    password 'password'

    trait :author do
      role 'author'
    end

    trait :admin do
      role 'admin'
    end
  end
end
