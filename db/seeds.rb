Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.ingredient,
                  cost: Faker::Commerce.price,
                  country: Faker::Address.country
end

p "Created #{Product.count} products"

Review.destroy_all

250.times do |index|
  Review.create!(author: Faker::Name.first_name,
                content: Faker::Friends.quote,
                rating: Faker::Number.between(1, 5),
                product_id: Faker::Number.between(1, 50))
end

p "Created #{Review.count} reviews"
