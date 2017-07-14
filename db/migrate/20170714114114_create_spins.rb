class CreateSpins < ActiveRecord::Migration
  def change
    create_table :spins do |t|
      t.integer :feeling_id

      t.timestamps
    end
  end
end
