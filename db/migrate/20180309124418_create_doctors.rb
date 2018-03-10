class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :license_number
      t.string :qualification
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
