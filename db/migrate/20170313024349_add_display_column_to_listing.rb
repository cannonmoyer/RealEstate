class AddDisplayColumnToListing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :display, :boolean
  end
end
