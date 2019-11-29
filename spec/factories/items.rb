FactoryBot.define do
  factory :random_item, class: Item do
    name        {Faker::App.name}
    price       {Faker::Commerce.price}
    description {Faker::Lorem.sentence}
    image       {Faker::LoremFlickr.image}
    inventory   {Faker::Number.number(digits: 3)}
    active      { true }
    association :merchant, factory: :random_merchant
  end
end
