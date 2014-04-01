# -*- coding: utf-8 -*-
FactoryGirl.define do

  factory :answer do
    exam_id
    question_id
    status

    trait :correct do
      status 'correct'
    end

    trait :incorrect do
      status 'incorrect'
    end
  end

end
