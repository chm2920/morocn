Morocn::Application.routes.draw do
  
  get 'zh' => 'start#ch', :id => "zh"
  get "en" => "start#ch", :id => "en"
  get "about" => "about#about"
  get "culture" => "about#culture"
  
  get "qualification" => "about#qualification"
  get "quality" => "about#quality"
  get "quality_b" => "about#quality_b"
  get "quality_c" => "about#quality_c"
  get "quality_d" => "about#quality_d"
  
  get "national" => "about#national"
  
  get "investment" => "about#investment"
  get "process" => "about#investment_process"
  
  get "contact" => "about#contact"
  get "careers" => "about#careers"
  get "declaration" => "about#declaration"
  
  get "news_list/:id" => "topics#list"
  get "news/:id" => "topics#show"
  get "ajax_news_list/:id" => "topics#news_list"
  
  get "product_catalogs/:id" => "products#list"
  get "products/:title" => "products#show"
  get "products" => "products#list"
  get "order/:title" => "products#order"
  get "order_rst" => "products#order_rst"
  get "clear_cookie/:id" => "products#clear_cookie"
   
  get "sale" => "sales#index"
  get "sale_info/(:id)" => "sales#show"  
  
  get "service" => "services#index"
  get "products_intro" => "services#products_intro"
  get "guestbooks" => "services#guestbooks"
  get "guestbook_new" => "services#guestbook_new"
  
  get "admin" => "account#login"
  get "account/main"
  get "account/desktop"
  get "admin_login_rst" => "account#login_rst"
  get "admin_logout" => "account#logout"
  
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
    
    get "sys/en_flashpics"
    post "sys/en_flashpics"
    
    get "sys/en_index_ads"
    post "sys/en_index_ads"
    
    get "sys/sys_count"
    post "sys/sys_count"
    
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
  
  get "upload_asset" => "assets#create"
  get "file_manager_json" => "assets#list"
      
  root :to => 'start#index'
  
  get "*path" => "application#render_not_found"
  
end
