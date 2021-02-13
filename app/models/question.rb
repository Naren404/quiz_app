class Question < ApplicationRecord
  belongs_to :category

  has_one :answer, inverse_of: :question , dependent: :destroy                           
  accepts_nested_attributes_for :answer, :allow_destroy => true

end
