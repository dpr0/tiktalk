# frozen_string_literal: true

class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.integer  :sender_id
      t.integer  :receiver_id

      t.timestamps null: false
    end
    add_index :chats, [:sender_id, :receiver_id]
  end
end
