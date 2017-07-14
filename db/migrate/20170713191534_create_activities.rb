class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :description
      t.integer :feeling_id

      t.timestamps
    end
  end
end
