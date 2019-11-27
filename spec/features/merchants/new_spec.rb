require "rails_helper"

describe "new merchant page" do
  before :each do
    visit "/merchants/new"
  end

  it "has a form for a new merchant" do
    fill_in "name",     with: "test name"
    fill_in "address",  with: "test address"
    fill_in "city" ,    with: "test city"
    fill_in "state",    with: "test state"
    fill_in "zip",      with: "test zip"
    click_button 'Create'
  
    new_merchant = Merchant.last
    expect(new_merchant.name).to    eq "test name"
    expect(new_merchant.address).to eq "test address"
    expect(new_merchant.city).to    eq "test city"
    expect(new_merchant.state).to   eq "test state"
    expect(new_merchant.zip).to     eq "test zip"

    expect(current_path).to eq "/merchants"
    expect(page).to have_content new_merchant.name
  end
end