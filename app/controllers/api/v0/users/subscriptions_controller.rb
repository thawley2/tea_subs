class Api::V0::Users::SubscriptionsController < ApplicationController
  def create
    require 'pry'; binding.pry
    UserSubscription.new
  end

  def user_subscription_params
    params.permit(:user_id, :subscription_id)
  end
end