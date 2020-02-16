class RemoveItemIdFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :item_id, :integer
  end
end
