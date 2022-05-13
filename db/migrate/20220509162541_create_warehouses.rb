class CreateWarehouses < ActiveRecord::Migration[7.0]
  def change
    create_table :warehouses do |t|
      t.string :name, null: false
      t.string :city, null: false
      t.string :country, null: false

      t.timestamps
    end
  end
end
