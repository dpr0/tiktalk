# frozen_string_literal: true

class CreateSex < ActiveRecord::Migration[6.0]
  def change
    create_table :sex do |t|
      t.string  :code
      t.string  :name
      t.string  :color

      t.timestamps null: false
    end
  end
end
