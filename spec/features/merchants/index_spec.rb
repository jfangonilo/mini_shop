require "rails_helper"

describe "merchant index test" do
  before :each do
    @merchant_1 = Merchant.create!(
      name:     "Bentgate Mountaineering",
      address:  "1313 Washington Ave",
      city:     "Golden",
      state:    "CO",
      zip:      "80401"
    )
    @merchant_2 = Merchant.create!(
      name:     "Wilderness Exchange",
      address:  "2401 15th St #100",
      city:     "Denver",
      state:    "CO",
      zip:      "80202"
    )
    @merchant_3 = Merchant.create!(
      name:     "Neptune Mountaineering",
      address:  "633 S Broadway",
      city:     "Boulder",
      state:    "CO",
      zip:      "80305"
    )
  end

  it "shows the list of merchant names" do
    visit "/merchants"
    expect(page).to have_content @merchant_1.name
    expect(page).to have_content @merchant_2.name
    expect(page).to have_content @merchant_3.name
  end
end