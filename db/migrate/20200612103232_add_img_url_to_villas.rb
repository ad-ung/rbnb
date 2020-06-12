class AddImgUrlToVillas < ActiveRecord::Migration[6.0]
  def change
    add_column :villas, :img_url, :string, array: true
  end
end
