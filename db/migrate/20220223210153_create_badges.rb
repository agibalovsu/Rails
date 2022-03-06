class CreateBadges < ActiveRecord::Migration[6.1]
  def change
    create_table :badges do |t|
      t.string :name
      t.string :image
      t.string :rule
      t.string :parameter

      t.timestamps
    end
  end
end