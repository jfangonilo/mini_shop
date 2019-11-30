require "rails_helper"

describe "item show page" do
  before :each do
    @item = create(:random_item)

    visit "items/#{@item.id}"
  end

  it "shows the item's attributes" do
    expect(page).to have_content @item.name
    expect(page).to have_content @item.price
    expect(page).to have_content @item.description
    expect(page).to have_css "img[src = '#{@item.image}']"
    expect(page).to have_content @item.inventory
    expect(page).to have_content "Active"
    expect(page).to have_content @item.merchant.name
  end

  it "has a link to update that item" do
    click_link "Update"

    expect(current_path).to eq "/items/#{@item.id}/edit"
  end
end