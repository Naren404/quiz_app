class User < ApplicationRecord
  has_many :attempt
  
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
