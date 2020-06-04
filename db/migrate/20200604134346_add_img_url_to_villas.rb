class AddImgUrlToVillas < ActiveRecord::Migration[6.0]
  def change
    add_column :villas, :img_url, :string
  end
end
