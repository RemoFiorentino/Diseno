class AddAsignedToUser < ActiveRecord::Migration
  def change
    add_column :users, :asigned, :integer
  end
end
