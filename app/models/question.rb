class Question < ApplicationRecord
  has_one :answer, inverse_of: :question , dependent: :destroy                           
  accepts_nested_attributes_for :answer, :allow_destroy => true

  has_many :question_categories
  has_many :categories, through: :question_categories

  validates :correct_answer, presence: true

end
