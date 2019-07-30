# frozen_string_literal: true

class CreatePersons < ActiveRecord::Migration[5.2]
  def change
    create_table :persons do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birthdate

      t.timestamps
    end
  end
end
