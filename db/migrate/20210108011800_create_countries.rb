# frozen_string_literal: true

class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string  :code
      t.string  :name
      t.string  :continent

      t.timestamps null: false
    end
  end
end
