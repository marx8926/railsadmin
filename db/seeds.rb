# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

CSV.foreach('db/ubi.csv') do |row|
	Ubigeo.create(:nUbigeo_id => row[0],:cUbigeoDesc => row[1], 
      :nUbigeoDpt => row[2],
      :nUbigeoProv => row[3],
      :nUbigeoDist => row[4],
      :nUbigeoDep => row[5],
      :nUbigeoLat => row[6],
      :nUbigeoLng => row[7])
end