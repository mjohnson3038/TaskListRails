class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :item
      t.string :description
      t.boolean :is_completed
      t.date :due

      t.timestamps null: false
    end
  end
end
