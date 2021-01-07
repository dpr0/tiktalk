# frozen_string_literal: true

class Chat < ApplicationRecord
  has_many :messages
  belongs_to :user, foreign_key: [:sender_id, :receiver_id]
end
