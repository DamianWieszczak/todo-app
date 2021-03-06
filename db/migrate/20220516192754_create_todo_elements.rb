class CreateTodoElements < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_elements do |t|
      t.string :content
      t.references :todo_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
