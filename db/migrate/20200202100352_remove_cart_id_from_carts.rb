class RemoveCartIdFromCarts < ActiveRecord::Migration[5.2]
  def change
    remove_column :carts, :cart_id, :integer
  end
end
