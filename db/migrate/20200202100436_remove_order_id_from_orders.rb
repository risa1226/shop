class RemoveOrderIdFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :order_id, :integer
  end
end
