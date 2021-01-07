# frozen_string_literal: true

class Interest < ApplicationRecord
  include Dictionary

  has_and_belongs_to_many :users
end
