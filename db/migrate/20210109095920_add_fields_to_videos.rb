class AddFieldsToVideos < ActiveRecord::Migration[6.1]
  def change
    add_column :videos, :checked, :boolean
  end
end
