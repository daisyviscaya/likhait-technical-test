FactoryBot.define do
  factory :expense do
    description { Faker::Lorem.sentence(word_count: 3) }
    amount { Faker::Commerce.price(range: 1.0..1000.0) }
    category
    date { Faker::Date.backward(days: 30) }
  end
end
