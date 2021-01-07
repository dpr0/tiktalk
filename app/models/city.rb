# frozen_string_literal: true

class City < ApplicationRecord
  include Dictionary

  has_many :users
end
