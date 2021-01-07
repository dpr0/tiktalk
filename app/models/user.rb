# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :trackable, :recoverable, :rememberable,
         :validatable, :omniauthable, omniauth_providers: [:firebase]
  has_many :authorizations, dependent: :destroy
  has_and_belongs_to_many :interests
  has_many :chats, foreign_key: [:sender_id, :receiver_id]
  has_many :likes, foreign_key: [:sender_id, :receiver_id]
  has_many :messages, foreign_key: :sender_id
  has_many :videos
  belongs_to :role
  belongs_to :sex
  belongs_to :countries, class_name: 'Country'
  belongs_to :universities, class_name: 'University'
  belongs_to :cities, class_name: 'City'

  def self.find_for_oauth(auth)
    authorization = Authorization.where(provider: auth[:provider], uid: auth[:uid]).first
    return authorization.user if authorization

    user = User.where(email: auth[:email], provider: auth[:provider]).first
    user ||= User.create!(auth)
    user.create_authorization(auth)
    user
  end

  def create_authorization(auth)
    authorizations.create(provider: auth[:provider], uid: auth[:uid])
  end
end
