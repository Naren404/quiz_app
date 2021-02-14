class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.integer :attempt_score
      t.belongs_to :attempt, null: false, foreign_key: true

      t.timestamps
    end
  end
end
