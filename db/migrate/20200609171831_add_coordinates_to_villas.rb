class AddCoordinatesToVillas < ActiveRecord::Migration[6.0]
  def change
    add_column :villas, :latitude, :float
    add_column :villas, :longitude, :float
  end
end
