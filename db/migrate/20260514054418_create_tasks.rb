class CreateTasks < ActiveRecord::Migration[7.2]
  def change
    create_table :tasks do |t|
      t.string  :title,       null: false
      t.text    :description
      t.integer :priority,    null: false, default: 1  # 1:低 2:中 3:高
      t.date    :due_date
      t.boolean :done,        null: false, default: false

      t.timestamps
    end
  end
end
