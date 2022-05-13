require "test_helper"

class WarehouseTest < ActiveSupport::TestCase
  test "should not save without a name" do
    warehouse = Warehouse.new(
      city: "Ottawa",
      country: "Canada"
    )
    assert_not warehouse.save
  end

  test "should not save without a city" do
    warehouse = Warehouse.new(
      name: "Capital City Warehouse",
      country: "Canada"
    )
    assert_not warehouse.save
  end

  test "should not save without a country" do
    warehouse = Warehouse.new(
      name: "Capital City Warehouse",
      city: "Ottawa",
    )
    assert_not warehouse.save
  end

  test "should save with all fields complete" do
    warehouse = Warehouse.new(
      name: "Capital City Warehouse",
      city: "Ottawa",
      country: "Canada"
    )
    assert warehouse.save
  end
end
