# frozen_string_literal: true

class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer  :sender_id
      t.integer  :receiver_id
      t.boolean  :sender_like
      t.boolean  :receiver_like

      t.timestamps null: false
    end
  end
end
