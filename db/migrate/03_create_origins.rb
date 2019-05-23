class CreateOrigins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|
      t.integer :country_id
      t.integer :year_id
      t.integer :population
      
    end
  end
end
