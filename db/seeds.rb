# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'CSV'


filename = '/Users/annekainic/Dropbox/work/mass_health/mass_health_data_2/db/data/mass_chip_data_edited.csv'

CSV.foreach(filename) do |attributes|

  data = {
    geography: attributes[0],
    population_2005: (attributes[1]).to_i,
    population_youth_2005: attributes[2].to_i,
    population_senior_2005: attributes[3].to_i,
    per_capita_income_2000: attributes[4].to_i,
    infant_deaths_2005_2008: attributes[9],
    teen_births_2005_2008: attributes[14]
  }

  town = Datum.where(data).first

  if town.nil?
    town = Datum.create(data)
  else
    town.update_attributes(data)
  end
end


