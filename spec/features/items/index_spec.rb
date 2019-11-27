require "rails_helper"

describe "items index page" do
  before :each do
    merchant_1 = Merchant.create(
      name:     "Bentgate Mountaineering",
      address:  "1313 Washington Ave",
      city:     "Golden",
      state:    "CO",
      zip:      "80401"
    )
    merchant_2 = Merchant.create(
      name:     "Wilderness Exchange",
      address:  "2401 15th St #100",
      city:     "Denver",
      state:    "CO",
      zip:      "80202"
    )
    merchant_3 = Merchant.create(
      name:     "Neptune Mountaineering",
      address:  "633 S Broadway",
      city:     "Boulder",
      state:    "CO",
      zip:      "80305"
    )

    @item_1 = merchant_1.items.create(
      name: "carabiner",
      price: 6_00,
      description: "use it to clip things",
      image: "https://www.rei.com/media/e2c5c7f6-380b-4da1-b4c9-01aafff0ffcd?size=784x588",
      inventory: 50
    )
    @item_2 = merchant_1.items.create(
      name: "crampons",
      price: 200_00,
      description: "spiky things for your feet",
      image: "https://www.rei.com/media/63b2eb09-22ed-43b9-8e3b-b4904c3d017a?size=784x588",
      inventory: 5
    )
    @item_3 = merchant_1.items.create(
      name: "skis",
      price: 600_00,
      description: "slide down mountains on there",
      image: "https://www.rei.com/media/7886013c-ba41-43f9-a5d1-906f82cc5caf?size=784x588",
      inventory: 3
    )

    @item_4 = merchant_2.items.create(
      name: "camalot",
      price: 70_00,
      description: "rock protection",
      image: "https://www.rei.com/media/9c3674f3-1612-464d-b61b-24e5a4bf47b2?size=784x588",
      inventory: 20
    )
    @item_5 = merchant_2.items.create(
      name: "tent",
      price: 200_00,
      description: "for sleeping outside",
      image: "https://www.rei.com/media/3e73042d-aded-4741-9b26-a8da7395b69e?size=784x588",
      inventory: 20
    )
    @item_6 = merchant_2.items.create(
      name: "nalgene",
      price: 10_00,
      description: "drink out of this",
      image: "https://www.rei.com/media/3c5a2a95-e91e-42c4-82f9-c36b1a4ac51c?size=784x588",
      inventory: 40
    )

    @item_7 = merchant_3.items.create(
      name: "ice tools",
      price: 250_00,
      description: "hack away at ice",
      image: "https://www.rei.com/media/10b713fd-f74f-4cc0-ab2f-06f8c91ed467?size=784x588",
      inventory: 16
    )
    @item_8 = merchant_3.items.create(
      name: "rope",
      price: 250_00,
      description: "keep yourself on the wall",
      image: "https://www.rei.com/media/b1c10cfd-4bf7-477e-a7e3-ed7335e1fa2e?size=784x588",
      inventory: 15
    )
    @item_9 = merchant_3.items.create(
      name: "snowboard",
      price: 500_00,
      description: "can also slide down on these",
      image: "https://www.rei.com/media/153dbcc9-f374-4665-8af5-6a4d84da9983?size=784x588",
      inventory: 5
    )

    visit "/items"
  end

  it "shows all the items on the page" do
    expect(page).to have_content @item_1.name
    expect(page).to have_content @item_1.price
    expect(page).to have_content @item_1.description
    expect(page).to have_css "img[src = '#{@item_1.image}']"
    expect(page).to have_content @item_1.inventory

    expect(page).to have_content @item_2.name
    expect(page).to have_content @item_2.price
    expect(page).to have_content @item_2.description
    expect(page).to have_css "img[src = '#{@item_2.image}']"
    expect(page).to have_content @item_2.inventory

    expect(page).to have_content @item_3.name
    expect(page).to have_content @item_3.price
    expect(page).to have_content @item_3.description
    expect(page).to have_css "img[src = '#{@item_3.image}']"
    expect(page).to have_content @item_3.inventory

    expect(page).to have_content @item_4.name
    expect(page).to have_content @item_4.price
    expect(page).to have_content @item_4.description
    expect(page).to have_css "img[src = '#{@item_4.image}']"
    expect(page).to have_content @item_4.inventory

    expect(page).to have_content @item_5.name
    expect(page).to have_content @item_5.price
    expect(page).to have_content @item_5.description
    expect(page).to have_css "img[src = '#{@item_5.image}']"
    expect(page).to have_content @item_5.inventory

    expect(page).to have_content @item_6.name
    expect(page).to have_content @item_6.price
    expect(page).to have_content @item_6.description
    expect(page).to have_css "img[src = '#{@item_6.image}']"
    expect(page).to have_content @item_6.inventory

    expect(page).to have_content @item_7.name
    expect(page).to have_content @item_7.price
    expect(page).to have_content @item_7.description
    expect(page).to have_css "img[src = '#{@item_7.image}']"
    expect(page).to have_content @item_7.inventory

    expect(page).to have_content @item_8.name
    expect(page).to have_content @item_8.price
    expect(page).to have_content @item_8.description
    expect(page).to have_css "img[src = '#{@item_8.image}']"
    expect(page).to have_content @item_8.inventory

    expect(page).to have_content @item_9.name
    expect(page).to have_content @item_9.price
    expect(page).to have_content @item_9.description
    expect(page).to have_css "img[src = '#{@item_9.image}']"
    expect(page).to have_content @item_9.inventory
  end
end