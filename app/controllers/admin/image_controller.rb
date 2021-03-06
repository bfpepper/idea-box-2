class Admin::ImagesController < Admin::BaseController

  def index
    @images = Image.all
  end
  
  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to admin_images_path
    else
      render :new
    end
  end


  private

  def image_params
    params.require(:image).permit(:image_url)
  end

end
