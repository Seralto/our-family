# frozen_string_literal: true

class Relationship < ApplicationRecord
  validates :person, presence: true
  validates :relative_person, presence: true
  validates :kinship, presence: true

  belongs_to :person, class_name: 'Person'
  belongs_to :relative_person, class_name: 'Person'
  belongs_to :kinship
end
