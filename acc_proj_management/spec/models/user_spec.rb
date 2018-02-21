require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid fields' do
    # Setup
    user = User.create(name: 'Michael McKenna', email: 'mckemike12@tamu.edu', is_admin: true)
  
    # Exercise
    name = user.name
    email = user.email
    is_admin = user.is_admin

    # Verify
    expect(name).to eq 'Michael McKenna'
    expect(email).to eq 'mckemike12@tamu.edu'
    expect(is_admin).to eq true
  end

  it 'raises ConstraintException' do
        # Verify
        expect{ User.create() }.to raise_error
  end
end
