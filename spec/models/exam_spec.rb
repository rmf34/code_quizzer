require 'spec_helper'

describe Exam, 'Associations' do
  it { should have_many(:answers).dependent(:destroy) }
  it { should belong_to(:quiz) }
  it { should belong_to(:user) }
end
