# frozen_string_literal: true

class CreateInterestsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :interests_users do |t|
      t.integer  :user_id
      t.integer  :interest_id

      t.timestamps null: false
    end
    add_index :interests_users, [:user_id, :interest_id]
  end
end
