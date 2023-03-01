class RemoveRoleColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :agents, :role, :string
  end
end
