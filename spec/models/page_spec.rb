require 'rails_helper'

RSpec.describe Page, type: :model do
  
  it 'has a valid factory' do
    expect(FactoryGirl.build(:user).save).to be true
  end

  it 'sets indexpertise to false by default' do
    page = FactoryGirl.create(:page)

    expect(page.indexpertise).to be false
  end

  it 'is invalid without a title' do
    expect(FactoryGirl.build(:page, title: nil).save).to be false
  end

  it 'is invalid without a body' do 
    expect(FactoryGirl.build(:page, body: nil).save).to be false
  end

end
