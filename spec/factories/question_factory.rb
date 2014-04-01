# -*- coding: utf-8 -*-
FactoryGirl.define do

  factory :question do
    user_id
    quiz_id
    body 'Who is the smartest dog on earth?'
    answer 'The Almighty Doge!'
  end
end
