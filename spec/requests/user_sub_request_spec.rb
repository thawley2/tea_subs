
RSpec.describe '/user/:id/subscriptions/:id' do
  before(:each) do
    test_data
  end
  describe 'a user can subscribe to a tea subscription' do
    it 'returns a successfull response when a user subscribes to a tea subscription' do
      post "/api/v0/users/#{@user1.id}/subscriptions/#{@sub3.id}"

      expect(response).to be_successful
      expect(response.status).to eq(200)
      
      message = JSON.parse(response.body, symbolize_names: true)

      expect(message[:data][:message]).to eq("Successfully subscribed to #{@sub3.title}")
    end
  end
end