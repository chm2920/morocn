class Admin::ProductFeaturesController < Admin::Backend
  
  def index
    @product = Product.find(params[:product_id])
    @product_features = @product.product_features
  end

  def new
    @product = Product.find(params[:product_id])
    @product_feature = ProductFeature.new
  end

  def edit
    @product = Product.find(params[:product_id])
    @product_feature = ProductFeature.find(params[:id])
  end
  
  def create
    @product = Product.find(params[:product_id])
    @product_feature = ProductFeature.new(params[:product_feature])
    @product_feature.product = @product
    if @product_feature.save
      redirect_to [:admin, @product, :product_features]
    else
      render :action => "new"
    end
  end

  def update
    @product = Product.find(params[:product_id])
    @product_feature = ProductFeature.find(params[:id])
    @product_feature.update_attributes(params[:product_feature])
    redirect_to [:admin, @product, :product_features]
  end

  def destroy
    @product = Product.find(params[:product_id])
    @product_feature = ProductFeature.find(params[:id])
    @product_feature.destroy
    redirect_to [:admin, @product, :product_features]
  end
  
end
