# frozen_string_literal: true

class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :user, foreign_key: :sender_id
end
