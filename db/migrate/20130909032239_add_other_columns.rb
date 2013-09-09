class AddOtherColumns < ActiveRecord::Migration
  def up
    add_column :data, :population_2005, :string
    add_column :data, :population_youth_2005, :string
    add_column :data, :population_senior_2005, :string
    add_column :data, :per_capita_income_2000, :string
    add_column :data, :infant_deaths_2005_2008, :float
    add_column :data, :teen_births_2005_2008, :float
  end

  def down
    remove_column :data, :population_2005, :string
    remove_column :data, :population_youth_2005, :string
    remove_column :data, :population_senior_2005, :string
    remove_column :data, :per_capita_income_2000, :string
    remove_column :data, :infant_deaths_2005_2008, :float
    remove_column :data, :teen_births_2005_2008, :float
  end
end
