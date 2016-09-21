class ItemsController < ApplicationController
  before_filter :find_item,
                only: [:show, :edit, :update, :destroy, :upvote, :downvote]

  def index
    @items = Item.all
  end

  # GET /items/:id
  def show
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
    @item.update_attributes item_params

    if @item.errors.empty?
      redirect_to item_path @item.id
    else
      render :edit
    end
  end

  # DELETE /items/:id
  def destroy
    @item.destroy!
    redirect_to items_url
  end

  # GET /items/:id/upvote
  def upvote
    @item.increment! :votes_count
    redirect_to action: :index
  end

  # GET /items/:id/upvote
  def downvote
    @item.decrement! :votes_count
    redirect_to action: :index
  end

  def expensive
    @items = Item.where 'price > 1000'
    render :index
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :real, :description, :weight)
  end

  def find_item
    @item = Item.find_by_id params[:id]
    render_404 unless @item
  end
end
