class AddAssignedToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :asigned, :string
  end
end
