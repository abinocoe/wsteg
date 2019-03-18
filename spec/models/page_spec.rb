require 'rails_helper'

RSpec.describe Page, type: :model do
  
  it 'has a valid factory' do
    expect(FactoryBot.build(:user).save).to be true
  end

  it 'sets indexpertise to false by default' do
    page = FactoryBot.create(:page)

    expect(page.indexpertise).to be false
  end

  it 'is invalid without a title' do
    expect(FactoryBot.build(:page, title: nil).save).to be false
  end

  it 'is invalid without a body' do 
    expect(FactoryBot.build(:page, body: nil).save).to be false
  end

end
