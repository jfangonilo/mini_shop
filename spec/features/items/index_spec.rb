require "rails_helper"

describe "items index page" do
  before :each do
    merchants = create_list(:random_merchant, 3)

    @merchant_1_items = create_list(:random_item, 3, merchant: merchants[0])
    @merchant_2_items = create_list(:random_item, 3, merchant: merchants[1])
    @merchant_3_items = create_list(:random_item, 3, merchant: merchants[2])
    binding.pry
    
    visit "/items"
  end

  it "shows all the items on the page" do
    expect(page).to have_content @merchant_1_items[0].name
    expect(page).to have_content @merchant_1_items[0].price
    expect(page).to have_content @merchant_1_items[0].description
    expect(page).to have_css "img[src = '#{@merchant_1_items[0].image}']"
    expect(page).to have_content @merchant_1_items[0].inventory

    expect(page).to have_content @merchant_1_items[1].name
    expect(page).to have_content @merchant_1_items[1].price
    expect(page).to have_content @merchant_1_items[1].description
    expect(page).to have_css "img[src = '#{@merchant_1_items[1].image}']"
    expect(page).to have_content @merchant_1_items[1].inventory

    expect(page).to have_content @merchant_1_items[2].name
    expect(page).to have_content @merchant_1_items[2].price
    expect(page).to have_content @merchant_1_items[2].description
    expect(page).to have_css "img[src = '#{@merchant_1_items[2].image}']"
    expect(page).to have_content @merchant_1_items[2].inventory

    expect(page).to have_content @merchant_2_items[0].name
    expect(page).to have_content @merchant_2_items[0].price
    expect(page).to have_content @merchant_2_items[0].description
    expect(page).to have_css "img[src = '#{@merchant_2_items[0].image}']"
    expect(page).to have_content @merchant_2_items[0].inventory

    expect(page).to have_content @merchant_2_items[1].name
    expect(page).to have_content @merchant_2_items[1].price
    expect(page).to have_content @merchant_2_items[1].description
    expect(page).to have_css "img[src = '#{@merchant_2_items[1].image}']"
    expect(page).to have_content @merchant_2_items[1].inventory

    expect(page).to have_content @merchant_2_items[2].name
    expect(page).to have_content @merchant_2_items[2].price
    expect(page).to have_content @merchant_2_items[2].description
    expect(page).to have_css "img[src = '#{@merchant_2_items[2].image}']"
    expect(page).to have_content @merchant_2_items[2].inventory

    expect(page).to have_content @merchant_3_items[0].name
    expect(page).to have_content @merchant_3_items[0].price
    expect(page).to have_content @merchant_3_items[0].description
    expect(page).to have_css "img[src = '#{@merchant_3_items[0].image}']"
    expect(page).to have_content @merchant_3_items[0].inventory

    expect(page).to have_content @merchant_3_items[1].name
    expect(page).to have_content @merchant_3_items[1].price
    expect(page).to have_content @merchant_3_items[1].description
    expect(page).to have_css "img[src = '#{@merchant_3_items[1].image}']"
    expect(page).to have_content @merchant_3_items[1].inventory

    expect(page).to have_content @merchant_3_items[2].name
    expect(page).to have_content @merchant_3_items[2].price
    expect(page).to have_content @merchant_3_items[2].description
    expect(page).to have_css "img[src = '#{@merchant_3_items[2].image}']"
    expect(page).to have_content @merchant_3_items[2].inventory
  end
end