class CreateTestPassages < ActiveRecord::Migration[6.1]
  def change
    create_table :test_passages do |t|     
      t.integer :correct_answers, default: 0
      t.boolean :passed, default: false
      t.references :test, foreign_key: true
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
