class User < ApplicationRecord
  has_many :user_subscriptions
  has_many :subscriptions, through: :user_subscriptions

  def all_subs
    subscriptions.select('subscriptions.*, user_subscriptions.status')
  end
end
