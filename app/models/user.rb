class User < ApplicationRecord
  has_one :roles
  has_many :admins
  has_many :patients

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :username, :presence => true, :uniqueness => true
  validates :role_id, :presence => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
