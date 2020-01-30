class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :cart_id
      t.integer :user_id
      t.integer :order_id
      t.integer :total_price
      t.datetime :date_time

      t.timestamps
    end
  end
end
