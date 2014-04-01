# -*- coding: utf-8 -*-
FactoryGirl.define do

  factory :comment do
    user_id
    quiz_id
    body
  end
end
