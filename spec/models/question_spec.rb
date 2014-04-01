require 'spec_helper'

describe Question, 'Associations' do
  it { should belong_to(:quiz) }
  it { should belong_to(:user) }
end
