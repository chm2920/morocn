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
    params.permit!
    @product = Product.find(params[:product_id])
    @product_feature = ProductFeature.new(params[:product_feature])
    @product_feature.product = @product
    @product_feature.title = params[:title][:zh] + "$$$" + params[:title][:en]
    @product_feature.info = params[:info][:zh] + "$$$" + params[:info][:en]
    if @product_feature.save
      redirect_to [:admin, @product, :product_features]
    else
      render :action => "new"
    end
  end

  def update
    @product = Product.find(params[:product_id])
    @product_feature = ProductFeature.find(params[:id])
    @product_feature.title = params[:title][:zh] + "$$$" + params[:title][:en]
    @product_feature.info = params[:info][:zh] + "$$$" + params[:info][:en]
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
