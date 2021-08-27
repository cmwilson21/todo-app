class CreateTodoTable < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.boolean :completed, :default
      t.datetime :due_datetime
      t.datetime :completed_date
    end
  end
end
