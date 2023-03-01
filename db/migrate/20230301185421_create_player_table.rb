class CreatePlayerTable < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :rank
      t.integer :level
    end
  end
end
