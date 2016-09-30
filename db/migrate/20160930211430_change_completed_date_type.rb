class ChangeCompletedDateType < ActiveRecord::Migration
  def change
    change_column :tasks, :date_completed, :datetime
  end
end
