# frozen_string_literal: true

class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string  :code
      t.string  :name
      t.integer :country_id

      t.timestamps null: false
    end
  end
end
