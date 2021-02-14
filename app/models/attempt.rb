class Attempt < ApplicationRecord
  belongs_to :user
  has_many :score
end
