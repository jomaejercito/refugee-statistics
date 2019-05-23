class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.integer :country_id
      t.integer :year_id
      t.integer :population
      
    end
  end
end
