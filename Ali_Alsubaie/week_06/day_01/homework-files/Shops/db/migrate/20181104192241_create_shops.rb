class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
