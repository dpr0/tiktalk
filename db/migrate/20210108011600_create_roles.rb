# frozen_string_literal: true

class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string  :code
      t.string  :name

      t.timestamps null: false
    end
  end
end
