class Item < ApplicationRecord
  validates_presence_of :name, :price, :description, :image, :inventory, :active
  validates_numericality_of :price, :inventory
  validates :active, inclusion: {in: [true, false]} 

  belongs_to :merchant

  def active?
    self.active
  end
end