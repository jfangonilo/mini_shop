require "rails_helper"

describe "merchant show" do
  before :each do
    @merchant_1 = create(:random_merchant)

    visit "/merchants/#{@merchant_1.id}"
   end

   it "shows all merchant attributes" do
    expect(page).to have_content @merchant_1.name
    expect(page).to have_content @merchant_1.address
    expect(page).to have_content @merchant_1.city
    expect(page).to have_content @merchant_1.state
    expect(page).to have_content @merchant_1.zip
   end

   it "has a link to update the merchant" do
    click_link "Update"
    expect(current_path).to eq "/merchants/#{@merchant_1.id}/edit"
   end

   it "has a link to delete the merchant" do
    click_link "Delete"
    expect(current_path).to eq "/merchants"
    expect(page).to_not have_content @merchant_1.name
   end
end
