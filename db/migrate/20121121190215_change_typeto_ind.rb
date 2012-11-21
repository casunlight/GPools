class ChangeTypetoInd < ActiveRecord::Migration
  def change
    rename_column :pools, :type, :ind_out
  end
end
