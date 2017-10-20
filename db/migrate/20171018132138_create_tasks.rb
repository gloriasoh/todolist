class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|

      t.string :name, null: false
      t.text :descriptions
      t.string :status, null: false
      t.date :date, null: false
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
