# -*- coding: utf-8 -*-
FactoryGirl.define do

  factory :exam do
    quiz_id
    user_id
    correct_answers 7
    incorrect_answers 2
    unanswered_questions 1

    trait :graded do
      status 'graded'
    end

  end
end
