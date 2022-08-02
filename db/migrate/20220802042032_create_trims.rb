class CreateTrims < ActiveRecord::Migration[7.0]
  def change
    create_table :trims do |t|
      t.string :name
      t.string :body_kit
      t.string :forced_induction
      t.string :wheels
      t.string :transmission
      t.string :sound_system

      t.timestamps
    end
  end
end
