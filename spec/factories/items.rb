FactoryBot.define do
  factory :random_item, class: Item do
    name        {Faker::App.name}
    price       {Faker::Commerce.price}
    description {Faker::Lorem.sentence}
    image       {Faker::LoremFlickr.image}
    inventory   {Faker::Number.number(digits: 3)}
    association :merchant, factory: :random_merchant
  end
end
