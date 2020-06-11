class AddRatingsToVillas < ActiveRecord::Migration[6.0]
  def change
    add_column :villas, :rating, :integer
  end
end
