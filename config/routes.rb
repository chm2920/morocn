Morocn::Application.routes.draw do
  
  match 'zh' => 'start#ch', :id => "zh"
  match "en" => "start#ch", :id => "en"
  match "about" => "about#about"
  match "culture" => "about#culture"
  match "credibility" => "about#credibility"
  
  match "qualification" => "about#qualification"
  match "quality" => "about#quality"
  
  match "national" => "about#national"
  
  match "investment" => "about#investment"
  match "process" => "about#investment_process"
  
  match "contact" => "about#contact"
  match "careers" => "about#careers"
  match "declaration" => "about#declaration"
  match "quality_ad" => "about#quality_ad"
  
  match "news_list/:id" => "topics#list"
  match "news/:id" => "topics#show"
  match "ajax_news_list/:id" => "topics#news_list"
  
  match "product_catalogs/:id" => "products#list"
  match "products/:title" => "products#show"
  match "products" => "products#list"
  match "order/:title" => "products#order"
  match "order_rst" => "products#order_rst"
  match "clear_cookie/:id" => "products#clear_cookie"
  
  match "download/(:id)" => "services#download"
   
  match "sale" => "sales#index"
  match "sale_info/(:id)" => "sales#show"  
  
  match "service" => "services#index"
  match "faq" => "services#faq"  
  
  match "admin" => "account#login"
  get "account/main"
  get "account/desktop"
  match "admin_login_rst" => "account#login_rst"
  match "admin_logout" => "account#logout"
  
  namespace :admin do
    resources :intros
    
    resources :catalogs
    
    get "topics/clear"
    delete "topics/del"
    post "topics/repost"
    get "topics/trashes"
    post "topics/trashes"
    resources :topics do
      collection do
        get :index
      end
    end
    
    resources :product_catalogs do
      resources :product_params
    end
    
    resources :products do
      member do
        get :specifications
        put :specifications
      end
      
      resources :product_imgs
      
      resources :product_features
      
      resources :product_files
    end
    
    resources :product_orders do
      collection do
        post :index
      end
    end
        
    get "db/index"
    
    post "db/backup"
    post "db/restore"
    delete "db/destroy"
    
    get "db/sql"
    post "db/sql"
    
    get "db/tables"
    get "db/structure"
    post "db/export_sql"
    
    get "sys/settings"
    post "sys/settings"
    
    get "sys/flashpics"
    post "sys/flashpics"
    
    get "sys/index_ads"
    post "sys/index_ads"
    
    resources :sales do
      member do
        post :clear
      end
    end
        
    resources :friendlinks do
      collection do
        post :batch_update
      end
    end
    
    resources :guestbooks do
      collection do
        post :index
      end
    end
    
    resources :faqs
    
    resources :kfs
      
    get "run_logs/index"
    post "run_logs/index"
    get "run_logs/clear"
    resources :run_logs
    
    resources :admins
  end
  
  namespace :kindeditor do
    post "/upload" => "assets#create"
    get  "/filemanager" => "assets#list"
  end
  
  match "upload_asset" => "assets#create"
  match "file_manager_json" => "assets#list"
      
  root :to => 'start#index'
  
  match "*path" => "application#render_not_found"
  
end
