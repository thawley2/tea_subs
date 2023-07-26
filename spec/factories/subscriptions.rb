FactoryBot.define do
  factory :subscription do
    title { Faker::Subscription.plan }
    price { Faker::Number.between(from: 25.00, to: 35.00) }
    frequency { Faker::Subscription.payment_term }
  end
end