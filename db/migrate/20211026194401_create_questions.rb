class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :body
      t.references :test

      t.timestamps
    end
  end
end
