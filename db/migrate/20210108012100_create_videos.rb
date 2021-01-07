# frozen_string_literal: true

class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.integer  :user_id
      t.string   :uid
      t.string   :gif
      t.integer  :sort_order
      t.string   :meta

      t.timestamps null: false
    end
  end
end
