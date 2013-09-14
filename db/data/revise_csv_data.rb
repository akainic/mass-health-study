require 'CSV'
require 'pry'

filename = '/Users/annekainic/Dropbox/work/mass_health/mass_health_data_2/db/data/mass_chip_data.csv'

File.open('mass_chip_data_edited.csv', 'w') do |csv|
  CSV.foreach(filename, {:headers => true}) do |row|
    row[1] = row[1].delete(',').to_i
    row[2] = row[2].delete(',').to_i
    row[3] = row[3].delete(',').to_i
    row[4] = row[4].delete(',').delete('$').to_i
    csv << row
  end
end


