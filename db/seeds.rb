# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'open-uri'

pools_json = JSON.parse(open("https://nycopendata.socrata.com/api/views/2jq5-qxzu/rows.json?accessType=DOWNLOAD").read)



pools_json["data"].each do |pool|
  Pool.create(
  :title => pool[10],
  :address => pool[11],
  :ind_out => pool[18],
  :size => pool[12],
  :longitude => pool[9][2],
  :latitude => pool[9][1],
  :gmaps => true
  )

end