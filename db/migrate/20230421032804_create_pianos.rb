class CreatePianos < ActiveRecord::Migration[7.0]
  def change
    create_table :pianos do |t|
      t.string :model
      t.string :style
      t.integer :price
      t.string :color
      t.boolean :acoustic
      t.references :manufacturer, null: false, foreign_key: true
      t.integer :length

      t.timestamps
    end
  end
end
