# frozen_string_literal: true

class Role < ApplicationRecord
  include Dictionary

  has_many :users
end
