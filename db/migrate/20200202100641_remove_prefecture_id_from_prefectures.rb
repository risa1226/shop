class RemovePrefectureIdFromPrefectures < ActiveRecord::Migration[5.2]
  def change
    remove_column :prefectures, :prefecture_id, :integer
  end
end
