class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.references :person, foreign_key: true
      t.references :relative_person, foreign_key: true
      t.references :kinship, foreign_key: true

      t.timestamps
    end
  end
end
