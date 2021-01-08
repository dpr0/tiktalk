# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :trackable, :recoverable, :rememberable,
         :validatable, :omniauthable, omniauth_providers: [:firebase]
  has_many :authorizations, dependent: :destroy
  has_and_belongs_to_many :interests
  has_many :sender_chats,   class_name: 'Chat', foreign_key: :sender_id
  has_many :receiver_chats, class_name: 'Chat', foreign_key: :receiver_id
  has_many :messages, foreign_key: :sender_id
  has_many :videos
  belongs_to :role,         optional: true
  belongs_to :sex,          optional: true, class_name: 'Sex'
  belongs_to :countries,    optional: true, class_name: 'Country'
  belongs_to :universities, optional: true, class_name: 'University'
  belongs_to :cities,       optional: true, class_name: 'City'

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
