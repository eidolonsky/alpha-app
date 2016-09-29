class PhotosController < ApplicationController
	def index
		@photos = Photo.all
	end
	
	def show
		@photo = Photo.find(params[:id])
	end

	def new
		@photo = Photo.new
	end
	
	def create
		@photo = Photo.new
  	@photo.title = params[:photo][:title]
  	@photo.description = params[:photo][:description]
  	@photo.img_url = params[:photo][:img_url]
  	@photo.save
  	redirect_to photo_path(@photo)
	end	
end
