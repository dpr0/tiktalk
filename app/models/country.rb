# frozen_string_literal: true

class Country < ApplicationRecord
  include Dictionary

  has_many :users
end
