class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  # GET /items/:id
  def show
    @item = Item.find(params[:id])
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # POST /items
  def create
    @item = Item.create(item_params)
    if @item.valid?
      # redirect_to action: :show, id: @item.id
      redirect_to item_path @item.id
    else
      render :new
    end
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
