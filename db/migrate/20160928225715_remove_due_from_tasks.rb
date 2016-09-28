class RemoveDueFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :due, :date
  end
end
