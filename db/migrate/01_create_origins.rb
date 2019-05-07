class CreateOrigins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|
      t.string :name
      t.integer :year
      t.integer :population

      t.timestamps      
    end
  end
end
