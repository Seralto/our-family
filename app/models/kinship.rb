# frozen_string_literal: true

class Kinship < ApplicationRecord
  validates :name, presence: true

  has_many :relationships
end
