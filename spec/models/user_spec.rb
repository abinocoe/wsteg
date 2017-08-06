require 'rails_helper'

RSpec.describe User, type: :model do
    
    it 'has a valid factory' do
        expect(FactoryGirl.build(:user).save).to be true
    end

    it 'is invalid without an email' do
        expect(FactoryGirl.build(:user, email: nil).save).to be false
    end

    it 'is invalid without a unique email' do
        user = FactoryGirl.create(:user)

        expect(FactoryGirl.build(:user, email: 'example@example.com').save).to be false
    end

    it 'is invalid without a password' do
        expect(FactoryGirl.build(:user, password: nil).save).to be false
    end

end
