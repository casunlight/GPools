class FixSpellingLongitude < ActiveRecord::Migration
  def change
    rename_column :pools, :longititude, :longitude
    add_column :pools, :gmaps, :boolean
  end
end
