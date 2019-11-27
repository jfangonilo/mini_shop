class Item < ApplicationRecord
  validates_presence_of :name, :price, :description, :image, :inventory
  validates_numericality_of :price, :inventory

  belongs_to :merchant
end