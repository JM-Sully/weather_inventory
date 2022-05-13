require "test_helper"

class ItemWarehouseTest < ActiveSupport::TestCase
  test "should not save without an item" do
    iw = ItemWarehouse.new(
      amount: 1,
      warehouse: warehouses(:animal)
    )
    assert_not iw.save
  end

  test "should not save without a warehouse" do
    iw = ItemWarehouse.new(
      amount: 1,
      item: items(:dog),
    )    
    assert_not iw.save
  end

  test "should save with all fields complete" do
    iw = ItemWarehouse.new(
      amount: 5,
      item: items(:dog),
      warehouse: warehouses(:animal)
    )    
    assert iw.save!
  end
end
