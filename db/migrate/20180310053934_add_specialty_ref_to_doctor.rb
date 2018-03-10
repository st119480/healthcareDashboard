class AddSpecialtyRefToDoctor < ActiveRecord::Migration[5.1]
  def change
    add_reference :doctors, :specialty, foreign_key: true
  end
end
