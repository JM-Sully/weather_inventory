class WarehousesController < ApplicationController
  def index
    @warehouses = Warehouse.all
  end

  def show
    @warehouse = Warehouse.find(params[:id])
  end

  def new
    @warehouse = Warehouse.new
    @cities = Warehouse.cities
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)

    if @warehouse.save
      redirect_to @warehouse
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @warehouse = Warehouse.find(params[:id])
  end

  def update
    @warehouse = Warehouse.find(params[:id])

    if @warehouse.update(warehouse_params)
      redirect_to @warehouse
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def warehouse_params
      params.require(:warehouse).permit(:name, :city, :country)
    end
end
