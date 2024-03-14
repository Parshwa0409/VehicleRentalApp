class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.string :carholder_name
      t.string :card_number
      t.date :expiry_date
      t.integer :cvv

      t.timestamps
    end
  end
end
