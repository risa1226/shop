class AddCommentToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :comment, :string
  end
end
