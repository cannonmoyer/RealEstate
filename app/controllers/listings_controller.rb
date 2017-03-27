class ListingsController < ApplicationController
  def index
    @listings = Listing.where(display: true).where(sold: false).order("name ASC")
  end

  def new
  	@listing = Listing.new
  end


  def create
  	Listing.create!(params.require(:listing).permit(:name, :image, :youtube_link, :address, :city, :state, :zip, :price, :short_description, :description, :display, :show_in_slidshow, :featured_listing, :sold))
  	redirect_to admin_listings_path

  end

  def edit
  	@listing = Listing.find(params[:id])
  end

  def update
    listing = Listing.find(params[:id])
    listing.update!(params.require(:listing).permit(:name, :image, :youtube_link, :address, :city, :state, :zip, :price, :short_description, :description, :display, :show_in_slidshow, :featured_listing, :sold))
    redirect_to admin_listings_path
  end

  def admin_index
    @listings = Listing.all
  end

  def destroy
    listing = Listing.find(params[:id])
    listing.destroy!
    redirect_to admin_listings_path
  end

  def view_listing
    @listing = Listing.find(params[:id])
  end
end


