class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :stock_id
      t.text :description
      t.decimal :price
      t.decimal :cost
      t.text :price_type
      t.integer :quantity_on_hand
      t.text :modifier_1_name
      t.decimal :modifier_1_price
      t.text :modifier_2_name
      t.decimal :modifier_2_price
      t.text :modifier_3_name
      t.decimal :modifier_3_price

      t.timestamps
    end
  end
end
