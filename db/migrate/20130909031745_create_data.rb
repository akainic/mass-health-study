class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :geography

      t.timestamps
    end
  end
end
