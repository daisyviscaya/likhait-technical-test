FactoryBot.define do
  factory :category do
    sequence(:name) do |n|
      "#{%w[
        Food
        Transportation
        Entertainment
        Shopping
        Bills
        Healthcare
        Education
        Travel
        Personal
        Other
      ].sample} #{n}"
    end
  end
end
