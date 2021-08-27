class RemoveColumnsDatetime < ActiveRecord::Migration[5.2]
  def change
    remove_column :todos, :due_date
    remove_column :todos, :completed_date
  end
end
