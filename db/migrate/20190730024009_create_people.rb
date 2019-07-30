# frozen_string_literal: true

class CreatePerson < ActiveRecord::Migration[5.2]
  def change
    create_table :person do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birthdate

      t.timestamps
    end
  end
end
