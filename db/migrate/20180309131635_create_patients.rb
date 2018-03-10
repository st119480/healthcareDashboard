class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.references :user, foreign_key: true
      t.references :blood_types, foreign_key: true

      t.timestamps
    end
  end
end
