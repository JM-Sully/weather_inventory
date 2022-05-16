class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @item_warehouses = @item.item_warehouses.where(item: @item)

    item_warehouses_with_inventory = ItemWarehouse.where(item: @item)
    @empty_warehouses = Warehouse.where.not(id: item_warehouses_with_inventory.map(&:warehouse_id)) 
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      id = @item.id.to_s
      redirect_to "/item_warehouses/new?item=" + id
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @item = Item.find(params[:id])
    @warehouses = @item.item_warehouses.where(item: @item)
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to @item
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def item_params
      params.require(:item).permit(:name, :description)
    end
end
