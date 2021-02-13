class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :ans1
      t.string :ans2
      t.string :ans3
      t.string :ans4
      t.belongs_to :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
