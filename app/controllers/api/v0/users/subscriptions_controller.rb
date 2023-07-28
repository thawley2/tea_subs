class Api::V0::Users::SubscriptionsController < ApplicationController
  before_action :find_subscription, only: [:create, :update]
  before_action :find_user_sub, only: [:update]

  def index
    user = User.find(params[:id])
    render json: SubscriptionSerializer.new(user.all_subs), status: 200
  end

  def create
    user_subscription = UserSubscription.new(user_subscription_params)
    if user_subscription.save
      render json: { data: { message: "Successfully subscribed to #{@subscription.title}" } }, status: 200
    end
  end

  def update
    @user_sub.update(status: 1)
    render json: { data: { message: "Successfully cancelled #{@subscription.title} subscription"}}, status: 200
  end

  private
    def user_subscription_params
      params.permit(:user_id, :subscription_id)
    end

    def find_subscription
      @subscription = Subscription.find(params[:subscription_id])
    end

    def find_user_sub
      @user_sub = UserSubscription.where(user_subscription_params)
    end
end