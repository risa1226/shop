class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :user_id
      t.integer :cart_id
      t.integer :cariiage_id
      t.integer :quantity

      t.timestamps
    end
  end
end
