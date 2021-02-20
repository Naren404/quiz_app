class RemoveCategoryFromQuestion < ActiveRecord::Migration[6.1]
  def change
    remove_reference :questions, :category, null: false, foreign_key: true
  end
end
