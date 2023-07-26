class Api::V0::Users::SubscriptionsController < ApplicationController
  before_action :find_subscription, only: [:create]
  def create
    user_subscription = UserSubscription.new(user_subscription_params)
    if user_subscription.save
      render json: { data: { message: "Successfully subscribed to #{@subscription.title}" } }, status: 200
    end
  end

  private
    def user_subscription_params
      params.permit(:user_id, :subscription_id)
    end

    def find_subscription
      @subscription = Subscription.find(params[:subscription_id])
    end
end