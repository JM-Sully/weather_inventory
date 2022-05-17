class ItemWarehousesController < ApplicationController
  def new
    @item_warehouse = ItemWarehouse.new
    @item = Item.find params[:item]

    item_warehouses_with_inventory = ItemWarehouse.where(item: @item)
    @empty_warehouses = Warehouse.where.not(id: item_warehouses_with_inventory.map(&:warehouse_id)) 
  end

  def create
    @item_warehouse = ItemWarehouse.new(item_warehouse_params)

    if @item_warehouse.save
      redirect_to @item_warehouse.item
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @item_warehouse = ItemWarehouse.find(params[:id])
  end

  def update
    @item_warehouse = ItemWarehouse.find(params[:id])

    if @item_warehouse.update(item_warehouse_params)
      redirect_to @item_warehouse.item
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def item_warehouse_params
    params.require(:item_warehouse).permit(:amount, :item_id, :warehouse_id)
  end
end
