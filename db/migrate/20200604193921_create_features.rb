class CreateFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :features do |t|
      t.integer :guest_nb
      t.integer :bedroom_nb
      t.integer :bathroom_nb
      t.references :villa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
