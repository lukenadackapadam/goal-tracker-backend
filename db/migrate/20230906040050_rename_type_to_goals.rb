class RenameTypeToGoals < ActiveRecord::Migration[7.0]
  def change
    rename_column :goals, :type, :goal_type
  end
end
