class Admin::FaqsController < Admin::Backend
  
  def index
    @faqs = Faq.all
  end

  def new
    @faq = Faq.new
  end

  def edit
    @faq = Faq.find(params[:id])
  end
  
  def create
    params.permit!
    @faq = Faq.new(params[:faq])
    @faq.text = params[:content]
    if @faq.save
      redirect_to [:admin, :faqs]
    else
      render :action => "new"
    end
  end

  def update
    params.permit!
    @faq = Faq.find(params[:id])
    @faq.text = params[:content]
    @faq.update_attributes(params[:faq])
    redirect_to [:admin, :faqs]
  end

  def destroy
    @faq = Faq.find(params[:id])
    @faq.destroy
    redirect_to [:admin, :faqs]
  end
  
end
