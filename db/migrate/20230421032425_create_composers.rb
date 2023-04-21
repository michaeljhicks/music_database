class CreateComposers < ActiveRecord::Migration[7.0]
  def change
    create_table :composers do |t|
      t.string :name
      t.integer :birth_year
      t.integer :death_year
      t.string :musical_era
      t.integer :num_compositions
      t.string :ethnicity
      t.boolean :tonal

      t.timestamps
    end
  end
end
