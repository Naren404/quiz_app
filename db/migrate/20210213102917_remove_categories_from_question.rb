class RemoveCategoriesFromQuestion < ActiveRecord::Migration[6.1]
  def change
    remove_reference :questions, :categories, null: false, foreign_key: true
  end
end
