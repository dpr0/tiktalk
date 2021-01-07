# frozen_string_literal: true

class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer  :chat_id
      t.integer  :sender_id
      t.text     :text
      t.datetime :seen_at

      t.timestamps null: false
    end
  end
end
