class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :dob, :date
    add_column :users, :contact, :string
    add_column :users, :username, :string
    add_column :users, :province, :string
    add_column :users, :city_village, :string
    add_column :users, :address_line_1, :string
    add_reference :users, :role, foreign_key: true
  end
end
