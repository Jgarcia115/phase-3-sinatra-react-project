class RemoveLevelColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :players, :level, :integer
  end
end
