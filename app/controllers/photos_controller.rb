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
  	@photo = Photo.new(photo_params)

  	@photo.save
  	redirect_to photos_path(@photo)
	end	

	def edit
  	@photo = Photo.find(params[:id])
	end

	def update
  	@photo = Photo.find(params[:id])
  	@photo.update(photo_params)

  	redirect_to photos_path(@photo)
	end

	def destroy
    @photo = Photo.find(params[:id])
  	@photo.destroy
 	  respond_to do |format|
      format.html { redirect_to photos_url }
      format.json { head :no_content }
    end
  end 

  private

  def photo_params
  	params.require(:photo).permit(:title, :description, :img_url, :tag_list)
	end
end
