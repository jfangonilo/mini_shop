require "rails_helper"

describe "items index page" do
  before :each do
    merchant_1 = create(:random_merchant)
    @items = create_list(:random_item, 3, merchant: merchant_1)
    visit "/merchants/#{merchant_1.id}/items"
  end

  it "shows all the items for that merchant" do
    within "#item-#{@items[0].id}" do
      expect(page).to have_content @items[0].name
      expect(page).to have_content @items[0].price
      expect(page).to have_content @items[0].description
      expect(page).to have_css "img[src = '#{@items[0].image}']"
      expect(page).to have_content "Active"
      expect(page).to have_content @items[0].inventory
    end

    within "#item-#{@items[1].id}" do
      expect(page).to have_content @items[1].name
      expect(page).to have_content @items[1].price
      expect(page).to have_content @items[1].description
      expect(page).to have_css "img[src = '#{@items[1].image}']"
      expect(page).to have_content "Active"
      expect(page).to have_content @items[1].inventory
    end

    within "#item-#{@items[2].id}" do
      expect(page).to have_content @items[2].name
      expect(page).to have_content @items[2].price
      expect(page).to have_content @items[2].description
      expect(page).to have_css "img[src = '#{@items[2].image}']"
      expect(page).to have_content "Active"
      expect(page).to have_content @items[2].inventory
    end
  end
end