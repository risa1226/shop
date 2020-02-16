class RemoveCarriageIdFromCarriages < ActiveRecord::Migration[5.2]
  def change
    remove_column :carriages, :carriage_id, :integer
  end
end
