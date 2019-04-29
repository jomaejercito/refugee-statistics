class CreateOriginCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :origin_countries do |t|
      t.string :name
      t.integer :year
      t.integer :population
      t.timestamps
    end
  end
end
