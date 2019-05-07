class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :name
      t.integer :year
      t.integer :population

      t.timestamps      
    end
  end
end
