class RemoveAsignedFromTask < ActiveRecord::Migration
  def change
    remove_column :tasks, :asigned, :integer
  end
end
