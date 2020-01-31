class RemoveCarriageIdFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :cariiage_id, :integer
  end
end
