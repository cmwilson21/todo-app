class ChangeColumnNameDueDatetime < ActiveRecord::Migration[5.2]
  def change
    rename_column :todos, :due_datetime, :due_date
  end
end
