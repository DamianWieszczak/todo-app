class AddCompletedAtToTodoElements < ActiveRecord::Migration[6.1]
  def change
    add_column :todo_elements, :completed_at, :datetime
  end
end
