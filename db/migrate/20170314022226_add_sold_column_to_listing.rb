class AddSoldColumnToListing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :sold, :boolean
  end
end
