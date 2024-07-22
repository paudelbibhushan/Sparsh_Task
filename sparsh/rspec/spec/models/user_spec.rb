require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }

  describe 'validations' do
    it 'is valid with a phone number of valid length' do
      user = FactoryBot.build(:user, phone_number: '1234567890')
      expect(user).to be_valid
    end
  end
end