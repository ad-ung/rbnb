class RemoveRatingFromVillas < ActiveRecord::Migration[6.0]
  def change
    remove_column :villas, :rating, :integer
  end
end
