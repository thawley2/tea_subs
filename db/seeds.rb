# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
2.times do 
    FactoryBot.create(:user)
end

5.times do
    FactoryBot.create(:subscription)
end

10.times do
    FactoryBot.create(:tea)
end

3.times do
    FactoryBot.create(:user_subscription, user_id: rand(1..2), subscription_id: rand(1..5), status: rand(0..1) )
end

6.times do
    FactoryBot.create(:tea_subscription, tea_id: rand(1..10), subscription_id: rand(1..5))
end

