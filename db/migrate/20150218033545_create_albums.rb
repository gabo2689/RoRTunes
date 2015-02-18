class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.decimal :price
      t.string :production_label
      t.references :singer, index: true

      t.timestamps
    end
  end
end
