# frozen_string_literal: true

class Person < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true
  validates :birthdate, presence: true

  has_many :relationships

  enum gender: {
    male: 'Homem',
    female: 'Mulher',
    other: 'Outro'
  }

  def full_name
    "#{first_name} #{last_name}"
  end
end
