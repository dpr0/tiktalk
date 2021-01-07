# frozen_string_literal: true

class University < ApplicationRecord
  include Dictionary

  has_many :users
end
