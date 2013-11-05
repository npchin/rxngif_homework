class PicturesController < ApplicationController
  def show

  	@picture = Picture.find_by(:id => params[:id])
  end

  def index
  	@list_of_pics = Picture.all
  end	

  def new
  end

  def create
  	picture = Picture.new
  	picture.source = params[:source]
  	picture.caption = params[:caption]
  	picture.save
  end

  def destroy
  	picture = Picture.find_by(:id => params[:id])
  	picture.destroy
  end

  def edit
  	@picture = Picture.find_by(:id => params[:id])
  end

  def update
  	@picture = Picture.find_by(:id => params[:id])
  	@picture.source = params[:source]
  	@picture.caption = params[:caption]
  	@picture.save
  end



end
