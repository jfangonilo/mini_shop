require "rails_helper"

describe Item do
  before :each do
    @item_1 = create(:random_item)
    binding.pry
  end

  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :price}
    it {should validate_presence_of :description}
    it {should validate_presence_of :image}
    it {should validate_presence_of :inventory}
    it {should validate_presence_of :active}

    it {should validate_numericality_of :price}
    it {should validate_numericality_of :inventory}
  end

  describe "relationships" do
    it {should belong_to :merchant}
  end

  describe "method" do
    it ".active? starts true" do
      expect(@item_1.active?).to eq true
    end
  end
end