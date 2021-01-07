# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string   :uid
      t.integer  :role_id
      t.string   :name
      t.string   :email
      t.string   :phone
      t.datetime :birth_date
      t.string   :position
      t.string   :company
      t.string   :avatar
      t.integer  :sex_id
      t.integer  :partner_sex_id
      t.integer  :country_id
      t.integer  :city_id
      t.integer  :university_id
      t.string   :description
      t.string   :last_lon
      t.string   :last_lat
      t.boolean  :sound
      t.datetime :last_activity
      t.string   :encrypted_password, null: false, default: ''
      t.string   :reset_password_token
      t.string   :provider
      t.string   :token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      t.timestamps null: false
    end
  end
end
