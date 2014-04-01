require 'spec_helper'

describe Answer, 'Associations' do
  it { should belong_to(:question) }
  it { should belong_to(:exam) }
end

describe Answer, 'Validations' do
  xit { should validate_presence_of(:exam_id) }
  xit { should validate_presence_of(:question_id) }
end
