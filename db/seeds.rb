# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'CSV'
require 

filename = '/Users/annekainic/Dropbox/work/mass_health/mass_health_data_2/db/data/mass_chip_data.csv'

CSV.foreach(filename, {:headers => true}) do |row|
  town = data.where({
    geography: row[0],
    population_2005: row[1],
    population_youth_2005: row[2],
    population_senior_2005: row[3],
    per_capita_income_2000: row[4],
    infant_deaths_2005_2008: row[9],
    teen_births_2005_2008: row[14]
  }).first

  if town.nil?
    town = health_data.new(row)
  else
    town.row = row
  end

  town.save!

end


