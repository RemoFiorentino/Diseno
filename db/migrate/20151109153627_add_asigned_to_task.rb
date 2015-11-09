class AddAsignedToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :asigned, :integer
  end
end
