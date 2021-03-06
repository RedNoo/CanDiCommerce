class ProductImagesController < ApplicationController
  before_action :set_product_image, only: [:show, :edit, :update, :destroy]
  before_action :set_product, only: [:new, :index]


  # GET /product_images
  # GET /product_images.json
  def index
    @product_images = ProductImage.where(id: @product.id)
  end



  # GET /product_images/1
  # GET /product_images/1.json
  def show
  end

  # GET /product_images/new
  def new
    @product_image = ProductImage.new
  end

  # GET /product_images/1/edit
  def edit
  end

  # POST /product_images
  # POST /product_images.json
  def create
    @product_image = ProductImage.new(product_image_params)
if params[:product_image][:data]
      @product_image.data = params[:product_image][:data].read
      @product_image.file_name  = params[:product_image][:data].original_filename
      @product_image.mime_type = params[:product_image][:data].content_type
    end
    respond_to do |format|
      if @product_image.save
        format.html { redirect_to @product_image, notice: 'Product image was successfully created.' }
        format.json { render :show, status: :created, location: @product_image }
      else
        format.html { render :new }
        format.json { render json: @product_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_images/1
  # PATCH/PUT /product_images/1.json
  def update
    respond_to do |format|
      if @product_image.update(product_image_params)
        format.html { redirect_to @product_image, notice: 'Product image was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_image }
      else
        format.html { render :edit }
        format.json { render json: @product_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_images/1
  # DELETE /product_images/1.json
  def destroy
    @product_image.destroy
    respond_to do |format|
      format.html { redirect_to product_images_url, notice: 'Product image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_image
      @product_image = ProductImage.find(params[:id])
    end

   def set_product
	@product = Product.find(params[:cid])
   end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_image_params
      params.require(:product_image).permit(:product_id, :data, :file_name, :mime_type, :order_no)
    end
end
