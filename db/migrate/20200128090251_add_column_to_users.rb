class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_id, :integer
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :postcode, :string
    add_column :users, :prefecture_id, :integer
    add_column :users, :city, :string
    add_column :users, :other_address, :text
  end
end
