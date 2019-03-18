require 'rails_helper'

RSpec.describe Example, type: :model do

  it 'has a valid factory' do 
    expect(FactoryBot.build(:example).save).to be true
  end

  it 'is invalid without a title' do
    expect(FactoryBot.build(:example, title: nil).save).to be false
  end

end
