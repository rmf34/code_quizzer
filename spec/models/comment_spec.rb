require 'spec_helper'

describe Comment, 'Associations' do
  it { should belong_to(:user) }
end

describe Comment, 'Validations' do
  xit { should validate_presence_of(:quiz_id) }
  xit { should validate_presence_of(:user_id) }
end
