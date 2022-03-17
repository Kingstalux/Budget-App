require 'rails_helper'

RSpec.describe Entity, type: :model do
  before(:each) do
    @user1 = User.create! name: 'Justin', password: '000000', email: 'justin@gmail.com'
    @entity = @user1.entities.create! name: 'Stranger Things', amount: 1000
  end

  it 'name should be present' do
    @entity.name = nil
    expect(@entity).to_not be_valid
  end

  it 'amount should be present and greater than 0' do
    @entity.amount = 0
    expect(@entity).to_not be_valid
  end

  it 'subject should be valid' do
    expect(@entity).to be_valid
  end
end
