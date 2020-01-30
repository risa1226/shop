class CreateItem < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string    :name
    end
  end
end

