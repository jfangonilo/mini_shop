require "rails_helper"

describe "new item page" do
  before :each do
    @merchant = create(:random_merchant)

    visit "/merchants/#{@merchant.id}/items/new"
  end

  it "has a form for a new item" do
    name        = Faker::App.name
    price       = Faker::Number.number(digits: 5)
    description = Faker::Lorem.sentence
    image       = Faker::LoremFlickr.image
    inventory   = Faker::Number.number(digits: 3)
    
    fill_in "name",         with: name
    fill_in "price",        with: price 
    fill_in "description",  with: description 
    fill_in "image",        with: image
    fill_in "inventory",    with: inventory
    
    click_on "Create"

    expect(current_path).to eq "/merchants/#{@merchant.id}/items"
    expect(page).to have_content name
    expect(page).to have_content price
    expect(page).to have_content description
    expect(page).to have_css "img[src = '#{image}']"
    expect(page).to have_content inventory
  end
end