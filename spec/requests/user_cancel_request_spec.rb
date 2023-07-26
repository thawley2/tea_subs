require 'rails_helper'

RSpec.describe '/users/:id/subscriptions/:id', type: :request do
  before(:each) do
    test_data 
  end
  describe 'a user can cancel a subscription' do
    it 'returns a message that the subscription has been cancelled' do
      expect(@user_sub1.status).to eq('active')

      patch "/api/v0/users/#{@user1.id}/subscriptions/#{@sub1.id}"

      expect(response).to be_successful
      expect(response.status).to eq(200)

      message = JSON.parse(response.body, symbolize_names: true)

      expect(message[:data][:message]).to eq("Successfully cancelled #{@sub1.title} subscription")
    end
  end
end