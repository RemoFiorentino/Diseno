class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.float :duration
      t.date :idate
      t.date :fdate
      t.integer :user_id
      t.boolean :finished

      t.timestamps null: false
    end
  end
end
