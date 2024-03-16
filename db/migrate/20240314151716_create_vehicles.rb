class CreateVehicles < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicles do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.integer :price_per_day
      t.string :img_url, default: "https://images.unsplash.com/photo-1637063868743-71757b4770c3?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
      t.boolean :is_rented, default: false

      t.timestamps
    end
  end
end
