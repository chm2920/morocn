Morocn::Application.routes.draw do
  
  match "about" => "about#about"
  match "culture" => "about#culture"
  match "honor" => "about#honor"
  match "contact" => "about#contact"
  match "careers" => "about#careers"
  match "declaration" => "about#declaration"
  
  match "sale" => "sales#index"
  match "shop" => "sales#shop"
  match "sales/(:id)" => "sales#show"
  
  match "join" => "about#join"
  match "process" => "about#process"
  
  match "service" => "services#index"
  match "faq" => "services#faq"
  match "download" => "services#download"
  
  match "news/(:id)/list" => "topics#list"
  match "news/:id" => "topics#show"
  
  match "products/(:id)/list" => "products#list"
  match "products/:id" => "products#show"
  match "products" => "products#list"
  
  root :to => 'start#index'
  
end
