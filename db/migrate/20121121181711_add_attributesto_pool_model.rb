class AddAttributestoPoolModel < ActiveRecord::Migration
  def change
    add_column :pools, :title, :string
    add_column :pools, :latitude, :float
    add_column :pools, :longititude, :float
    add_column :pools, :address, :string
    add_column :pools, :type, :string
    add_column :pools, :size, :string
  end
end
