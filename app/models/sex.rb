# frozen_string_literal: true

class Sex < ApplicationRecord
  include Dictionary
  self.table_name = 'sex'

  has_many :users
end
