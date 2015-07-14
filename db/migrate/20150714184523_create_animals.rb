class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.text :name
      t.text :species
      t.string :zoo_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
