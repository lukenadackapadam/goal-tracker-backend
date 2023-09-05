class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.string :description
      t.string :type
      t.boolean :completed

      t.timestamps
    end
  end
end
