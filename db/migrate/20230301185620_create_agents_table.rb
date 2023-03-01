class CreateAgentsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :role
      t.integer :ranking
      t.integer :player_id
    end
  end
end
