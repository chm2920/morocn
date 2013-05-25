Morocn::Application.routes.draw do
  
  match "about" => "about#about"
  match "culture" => "about#culture"
  match "honor" => "about#honor"
  
  match "shop" => "about#shop"
  
  match "join" => "about#join"
  match "process" => "about#join_process"
  
  match "contact" => "about#contact"
  match "careers" => "about#careers"
  match "declaration" => "about#declaration"
  match "quality" => "about#quality"
  
  match "news_list/:id" => "topics#list"
  match "news/:id" => "topics#show"
  match "ajax_news_list/:id" => "topics#news_list"
  
  match "product_catalogs/:id" => "products#list"
  match "products/:id" => "products#show"
  match "products" => "products#list"
  match "clear_cookie/:id" => "products#clear_cookie"
  
  
  match "sale" => "sales#index"
  match "sales/(:id)" => "sales#show"
  
  
  match "service" => "services#index"
  match "faq" => "services#faq"
  match "download" => "services#download"
  
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
    resources :topics do
      collection do
        get :index
        post :index
        get :trashes
        post :trashes
      end
    end
    
    resources :product_catalogs
    
    resources :products do
      member do
        get :specifications
        put :specifications
      end
      
      resources :product_imgs
      
      resources :product_features
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
        
    post "friendlinks/batch_update"
    resources :friendlinks
    
    post "guestbooks/index"
    resources :guestbooks
      
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
  
  match "file_manager_json" => "imgs#list"
    
  root :to => 'start#index'
  
  match "*path" => "application#render_not_found"
  
end
