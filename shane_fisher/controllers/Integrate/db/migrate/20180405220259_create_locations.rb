class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :spot
      t.text :area

      t.timestamps null: false
    end
  end
end
