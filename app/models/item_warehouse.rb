class ItemWarehouse < ApplicationRecord
  belongs_to :item
  belongs_to :warehouse

  validates :amount, presence: true, numericality: { only_integer: true }
  validates :item_id, presence: true 
  validates :warehouse_id, presence: true

  def weather_description(city)
    data = weather_response(city)
    data["weather"].first["description"]
  end

  def current_temp(city)
    data = weather_response(city)
    data["main"]["temp"]
  end 

  def min_temp(city)
    data = weather_response(city)
    data["main"]["temp_min"]
  end

  def max_temp(city)
    data = weather_response(city)
    data["main"]["temp_max"]
  end 

  def weather_response(city)
    res = Openweather::Search.by_location(city)
    data = JSON.parse res.body
  end
end
