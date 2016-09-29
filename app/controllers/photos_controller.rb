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

    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo,
          notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created,
          location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors,
          status: :unprocessable_entity }
      end
    end
  end	

	def edit
  	@photo = Photo.find(params[:id])
	end

	def update
  	@photo = Photo.find(params[:id])
  	respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo,
          notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors,
          status: :unprocessable_entity }
      end
    end
	end

	def destroy
    @photo = Photo.find(params[:id])
  	@photo.destroy
 	  respond_to do |format|
      format.html { redirect_to photos_url,
      	notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end 

  private

  def photo_params
  	params.require(:photo).permit(:title, :description, :img_url, :tag_list)
	end
end
