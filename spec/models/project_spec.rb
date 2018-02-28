require 'rails_helper'

RSpec.describe Project, type: :model do

	before(:each) do
		@project = Project.create(name: 'acc project', description: 'project management',
    						is_accepted: true, is_finished: false)
	end
	
  it 'is valid with valid fields' do
    # Exercise
    name = @project.name
    description = @project.description
    is_accepted = @project.is_accepted
    is_finished = @project.is_finished

    # Verify
    expect(name).to eq 'acc project'
    expect(description).to eq 'project management'
    expect(is_accepted).to eq true
    expect(is_finished).to eq false
  end 

  it 'raises ConstraintException' do
    # Verify - must have non null name field
    expect{ Project.create() }.to raise_error()
  end 

  it 'should have many users' do
  	# Set up
  	expect(@project).to have_and_belong_to_many(:users)
  end
end
