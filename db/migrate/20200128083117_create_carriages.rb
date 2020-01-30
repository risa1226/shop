class CreateCarriages < ActiveRecord::Migration[5.2]
  def change
    create_table :carriages do |t|
      t.integer :carriage_id
      t.integer :prefecture_id
      t.integer :price

      t.timestamps
    end
  end
end
