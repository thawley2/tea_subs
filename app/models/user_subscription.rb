class UserSubscription < ApplicationRecord
  belongs_to :user
  belongs_to :subscription
  enum status: [:active, :cancelled]
end
