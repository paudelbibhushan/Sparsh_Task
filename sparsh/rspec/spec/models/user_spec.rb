require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }

  describe 'validations' do
    it 'is valid with a phone number of valid length' do
      user = FactoryBot.build(:user, phone_number: '1234567890')
      expect(user).to be_valid
    end

    it 'should validate_uniqueness_of email ' do
      FactoryBot.create(:user, email: 'lalala@gmail.com')
      user = FactoryBot.build(:user, email: 'lalala@gmail.com')
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include('has already been taken')
    end
  end
  it { is_expected.to have_many(:posts).dependent(:destroy) }

end
