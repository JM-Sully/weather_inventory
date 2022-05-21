class WarehousesController < ApplicationController
  def index
    @warehouses = Warehouse.all
  end

  def show
    @warehouse = Warehouse.find(params[:id])
  end

  def new
    @warehouse = Warehouse.new
    @cities = Warehouse::CITIES
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)
    set_country(@warehouse.city)

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
    def set_country(city)
      case city
      when "Ottawa"
        @warehouse.country = "Canada"
      when "Zarautz"
        @warehouse.country = "Spain"
      when "Mimizan"
        @warehouse.country = "France"
      when "Monmouth"
        @warehouse.country = "Wales"
      when "Birmingham"
        @warehouse.country = "England"
      end
    end

    def warehouse_params
      params.require(:warehouse).permit(:name, :city, :country)
    end
end
