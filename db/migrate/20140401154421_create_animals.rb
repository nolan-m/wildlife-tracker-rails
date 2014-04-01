class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.column :species, :string
    end
    create_table :sightings do |t|
      t.column :animal_id, :integer
      t.column :region_id, :integer
      t.column :date, :date
      t.column :time, :time
    end
    create_table :regions do |t|
      t.column :name, :string
    end
  end
end
