require "rails_helper"

describe "merchant edit page" do
  before :each do
    @merchant_1 = Merchant.create!(
      name:     "Bentgate Mountaineering",
      address:  "1313 Washington Ave",
      city:     "Golden",
      state:    "CO",
      zip:      "80401"
    )

    visit "/merchants/#{@merchant_1.id}/edit"
  end

  it "has a form to update that merchant" do
    fill_in "name",     with: "test name"
    fill_in "address",  with: "test address"
    fill_in "city" ,    with: "test city"
    fill_in "state",    with: "test state"
    fill_in "zip",      with: "test zip"
    click_button 'Update'
    
    expect(current_path).to eq "/merchants/#{@merchant_1.id}"
    expect(page).to have_content "test name"
    expect(page).to have_content "test address"
    expect(page).to have_content "test city"
    expect(page).to have_content "test state"
    expect(page).to have_content "test zip"
  end
end