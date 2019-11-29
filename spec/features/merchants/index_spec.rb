require "rails_helper"

describe "merchant index" do
  before :each do
    @merchant_1 = create(:random_merchant)
    @merchant_2 = create(:random_merchant)
    @merchant_3 = create(:random_merchant)

    visit "/merchants"
  end

  it "shows the list of merchant names" do
    expect(page).to have_content @merchant_1.name
    expect(page).to have_content @merchant_2.name
    expect(page).to have_content @merchant_3.name
  end

  it "has a link to create a new merchant" do
    click_link "New Merchant"

    expect(current_path).to eq "/merchants/new"
  end
end