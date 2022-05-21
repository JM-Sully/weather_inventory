class CreateItemWarehouses < ActiveRecord::Migration[7.0]
  def change
    create_table :item_warehouses do |t|
      t.integer :amount, default: 0, null: false
      t.references :item, null: false, foreign_key: true
      t.references :warehouse, null: false, foreign_key: true

      t.timestamps
    end
  end
end
