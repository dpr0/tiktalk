# frozen_string_literal: true

class Sex < ApplicationRecord
  include Dictionary

  has_many :users
end
