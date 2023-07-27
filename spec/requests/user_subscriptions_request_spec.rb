require 'rails_helper'

RSpec.describe '/users/:id/subscriptions', type: :request do
  before(:each) do
    test_data
  end
  describe 'request for all subscriptions for a user' do
    it 'returns a list of all active/cancelled subscriptions for a user' do
      get "/api/v0/users/#{@user1.id}/subscriptions"

      expect(response).to be_successful
      expect(response.status).to eq(200)

      subs = JSON.parse(response.body, symbolize_names: true)

      expect(subs[:data]).to be_an Array
      expect(subs[:data].count).to eq(2)
      expect(subs[:data].first).to be_a Hash
      
      first_sub = subs[:data].first

      expect(first_sub).to have_key :id 
      expect(first_sub).to have_key :type  
      expect(first_sub).to have_key :attributes 
      expect(first_sub[:attributes]).to be_a Hash
      expect(first_sub[:attributes]).to have_key :title
      expect(first_sub[:attributes]).to have_key :price
      expect(first_sub[:attributes]).to have_key :frequency
      expect(first_sub[:attributes]).to have_key :status
      expect(first_sub[:attributes]).to have_key :teas
      expect(first_sub[:attributes][:teas]).to be_an Array
      first_sub[:attributes][:teas].each do |tea|
        expect(tea).to be_a Hash
        expect(tea).to have_key :name
      end
    end
  end
end