class AddReadinessAttributesToTests < ActiveRecord::Migration[6.1]
  def change
    add_column :tests, :readiness, :boolean, null: false, default: false
  end
end
