require 'rails_helper'

RSpec.describe Project, type: :model do
  it 'is valid with valid fields' do
    
  end 

  it 'raises ConstraintException' do
    # Verify - must have non null name field
    expect{ Project.create() }.to raise_error
  end 

  it 'should have many users' do

  end
end
