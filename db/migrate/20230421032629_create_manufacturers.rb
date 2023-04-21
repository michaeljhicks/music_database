class CreateManufacturers < ActiveRecord::Migration[7.0]
  def change
    create_table :manufacturers do |t|
      t.string :maker
      t.string :location
      t.integer :year_opened
      t.boolean :family_owned
      t.string :ceo

      t.timestamps
    end
  end
end
