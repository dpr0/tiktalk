# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :user, foreign_key: [:sender_id, :receiver_id]
end
