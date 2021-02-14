class CreateAttempts < ActiveRecord::Migration[6.1]
  def change
    create_table :attempts do |t|
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :q4
      t.integer :q5
      t.integer :q6
      t.integer :q7
      t.integer :q8
      t.integer :q9
      t.integer :q10
      t.integer :ans1
      t.integer :ans2
      t.integer :ans3
      t.integer :ans4
      t.integer :ans5
      t.integer :ans6
      t.integer :ans7
      t.integer :ans8
      t.integer :ans9
      t.integer :ans10
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
