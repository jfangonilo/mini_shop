class ItemsController < ApplicationController
  def index
    if @merchant
      @items = @merchant.items
    else
      @items = Item.all
    end
  end
end