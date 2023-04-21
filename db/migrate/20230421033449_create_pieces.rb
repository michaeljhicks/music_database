class CreatePieces < ActiveRecord::Migration[7.0]
  def change
    create_table :pieces do |t|
      t.integer :opus
      t.integer :number
      t.string :type_of_piece
      t.string :nickname
      t.integer :composition_date
      t.boolean :multiple_instruments
      t.string :main_instrument
      t.string :key_signature
      t.references :composer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
