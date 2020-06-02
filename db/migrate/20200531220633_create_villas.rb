class CreateVillas < ActiveRecord::Migration[6.0]
  def change
    create_table :villas do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :city
      t.integer :price_per_day

      t.timestamps
    end
  end
end
