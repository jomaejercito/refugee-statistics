class CreateHostingCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :hosting_countries do |t|
      t.string :name
      t.integer :year
      t.integer :population
      t.timestamps
    end
  end
end
