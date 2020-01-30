class AddColumnToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :item_id, :integer
    add_column :items, :second_name, :string
    add_column :items, :price, :integer
    add_column :items, :description, :text
    add_column :items, :image_path, :text
  end
end
