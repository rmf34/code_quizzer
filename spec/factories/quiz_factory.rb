# -*- coding: utf-8 -*-
FactoryGirl.define do

  factory :quiz do
    user_id
    topic_id
    body
    description
    slug
    page_title
  end
end
