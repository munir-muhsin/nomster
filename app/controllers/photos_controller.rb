class PhotosController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @place.photos.create
    redirect_to place_path(@place)
    @caption = caption
    
  end
  def caption
    @caption

  private
  def photo_params
    params.require(:photo).permit(:caption)
end
end
