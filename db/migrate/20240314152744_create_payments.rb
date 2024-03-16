class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.string :cardholder_name
      t.string :card_number
      t.date :expiry_date
      t.integer :cvv
      t.belongs_to :rental_agreement, foreign_key: true
      
      t.timestamps
    end
  end
end