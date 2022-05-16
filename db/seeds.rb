# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

items = Item.create([
  { name: "Yeti Mug", description: "A mug that keeps tea hot and beer cold" },
  { name: "Magnetic Utensils", description: "Four of each of knives, forks, and spoons that nest together" },
  { name: "Awning", description: "Makes shade in the sun and dry space in the rain" },
  { name: "Water Storage", description: "Vital for staying hydrated and being able to make tea" }
  ])

warehouses = Warehouse.create([
  { name: "Kitchen Supplies", city: "Ottawa", country: "Canada" },
  { name: "Outside Kit", city: "Zarautz", country: "Spain" },
  { name: "Living Essentials", city: "Mimizan", country: "France" }
])

item_warehouses = ItemWarehouse.create([
  { amount: 2, item_id: 1, warehouse_id: 1},
  { amount: 5, item_id: 2, warehouse_id: 1},
  { amount: 15, item_id: 3, warehouse_id: 2},
  { amount: 2, item_id: 3, warehouse_id: 3},
  { amount: 4, item_id: 4, warehouse_id: 3}
])