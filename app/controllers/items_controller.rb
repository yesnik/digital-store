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
    @item = Item.find(params[:id])
  end

  # PUT /items/:id
  def update
    @item = Item.find(params[:id])
    @item.update_attributes item_params
    
    if @item.errors.empty?
      redirect_to item_path @item.id
    else
      render :edit
    end
  end

  # DELETE /items/:id
  def destroy
    @item = Item.find params[:id]
    @item.destroy!
    redirect_to items_url
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :real, :description, :weight)
  end
end
