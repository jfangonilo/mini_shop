class ItemsController < ApplicationController
  def index
    if params[:merchant_id]
      @merchant = Merchant.find(params[:merchant_id])
      @items = @merchant.items
    else
      @items = Item.all
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @merchant = Merchant.find(params[:merchant_id])
  end

  def create
    merchant = Merchant.find(params[:merchant_id])
    item = merchant.items.new(item_params)
    item.save
    redirect_to "/merchants/#{item.merchant_id}/items"
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    item.save
    redirect_to "/items/#{item.id}"
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to "/items"
  end

  private
  def item_params
    params.permit(:name, :price, :description, :image, :inventory)
  end
end