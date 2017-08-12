require 'rails_helper'

RSpec.describe Example, type: :model do

  it 'has a valid factory' do 
    expect(FactoryGirl.build(:example).save).to be true
  end

  it 'is invalid without a title' do
    expect(FactoryGirl.build(:example, title: nil).save).to be false
  end

end
