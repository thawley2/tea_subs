FactoryBot.define do
  factory :user_subscription do
    user_id { nil }
    subscription_id { nil }
    status { nil }
  end
end