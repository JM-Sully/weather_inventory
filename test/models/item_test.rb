require "test_helper"

class ItemTest < ActiveSupport::TestCase
  test "should not save item without a name" do
    item = Item.new(description: "Great description.")
    assert_not item.save
  end

  test "should not save item without description" do
    item = Item.new(name: "Item")
    assert_not item.save
  end

  test "should save item with all details" do
    item = Item.new(name: "Item", description: "Great item.")
    assert item.save
  end
end
