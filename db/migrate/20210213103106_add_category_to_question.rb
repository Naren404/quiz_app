class AddCategoryToQuestion < ActiveRecord::Migration[6.1]
  def change
    add_reference :questions, :category, null: false, foreign_key: true
  end
end
