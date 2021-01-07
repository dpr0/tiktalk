# frozen_string_literal: true

class CreateUniversities < ActiveRecord::Migration[6.0]
  def change
    create_table :universities do |t|
      t.string  :code
      t.string  :name
      t.integer :country_id

      t.timestamps null: false
    end
  end
end
