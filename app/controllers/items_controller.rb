class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  # GET /items/new
  def new
  end

  # POST /items
  def create

    @item = Item.create!(item_params)

    render text: "#{ @item.id } - #{ @item.name } created!"
  end

  # GET /items/:id/edit
  def edit

  end

  # PUT /items/:id
  def update

  end

  # DELETE /items/:id
  def destroy

  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :real, :description, :weight)
  end
end
