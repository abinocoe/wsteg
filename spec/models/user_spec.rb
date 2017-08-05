require 'rails_helper'

RSpec.describe User, type: :model do
    it 'has a valid factory' do
        expect(FactoryGirl.build(:user).save).to be true
    end
end
