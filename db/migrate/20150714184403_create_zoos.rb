class CreateZoos < ActiveRecord::Migration
  def change
    create_table :zoos do |t|
      t.text :name
      t.text :location
      t.integer :year

      t.timestamps null: false
    end
  end
end
