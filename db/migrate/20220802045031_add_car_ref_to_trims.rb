class AddCarRefToTrims < ActiveRecord::Migration[7.0]
  def change
    add_reference :trims, :car, null: false, foreign_key: true
  end
end
