class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.text :image
      t.text :youtube_link
      t.text :address
      t.string :city
      t.string :state
      t.string :zip
      t.float :price
      t.text :short_description
      t.text :description
      t.boolean :show_in_slidshow
      t.boolean :featured_listing

      t.timestamps
    end
  end
end
