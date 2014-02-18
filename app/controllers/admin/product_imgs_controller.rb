class Admin::ProductImgsController < Admin::Backend
  
  def index
    @product = Product.find(params[:product_id])
    @product_imgs = @product.product_imgs
  end

  def new
    @product = Product.find(params[:product_id])
    @product_img = ProductImg.new
  end
  
  def create
    params.permit!
    @product = Product.find(params[:product_id])
    @product_img = ProductImg.new(params[:product_img])
    @product_img.product = @product
    if @product_img.save
      redirect_to [:admin, @product, :product_imgs]
    else
      render :action => "new"
    end
  end
  
  def edit
    @product = Product.find(params[:product_id])
    @product_img = ProductImg.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:product_id])
    @product_img = ProductImg.find(params[:id])
    @product_img.update_attributes(params[:product_img])
    redirect_to [:admin, @product, :product_imgs]
  end

  def destroy
    @product_img = ProductImg.find(params[:id])
    @product_img.destroy
    redirect_to [:admin, @product_img.product, :product_imgs]
  end
  
end
