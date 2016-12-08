class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html


  def create
    @place = Place.find(params[:place_id])
    @place.pictures.create(picture_params)
    redirect_to place_path(@place)
  end


  def index 
    @pictures = Picture.all
    respond_with(@pictures)
  end


  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
    respond_with(@picture)
  end

  def update 
    @picture.update(picture_params)
    respond_with(@picture)
  end

  def destroy
    @image.destroy
    respond_with(@image)
  end



  private 

  def set_picture
    @picture = Picture.find(params[:id])
  end


  def picture_params 
    params.require(:picture).permit(:picture, :caption)
  end





end
