class DropTableTestPassages < ActiveRecord::Migration[6.1]
  def up
  drop_table :test_passages, if_exists: true
  end
end
