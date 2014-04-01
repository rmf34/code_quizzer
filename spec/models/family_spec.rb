require 'spec_helper'

describe Family, 'Associations' do
  it { should have_many(:topics) }
end

describe Family, 'Validations' do
  it { should ensure_length_of(:page_title).is_at_most(45) }
end
