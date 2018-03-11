class InsertUser < ActiveRecord::Migration[5.1]
  def self.up
    User.create(:username => "superman", :role_id => 1, :first_name => "Super", :last_name => "Admin",
                :email => "superman@hd.com", :password => "admin123")
  end
  def self.down
    User.delete_all(:username => "superman")
  end
end

