require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationships' do
    it { should have_many :user_subscriptions }
    it { should have_many(:subscriptions).through(:user_subscriptions) }
  end

  before(:each) do
    test_data
  end

  describe '#all_subs' do
    it 'returns a list of all user subscriptions' do
      expect(@user1.all_subs.size).to eq(2)
      expect(@user1.all_subs).to eq([@sub1, @sub2])
      expect(@user1.all_subs.first.status).to eq(0)
    end
  end
end
