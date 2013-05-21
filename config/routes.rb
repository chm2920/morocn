Morocn::Application.routes.draw do
  
  match "contact" => "about#contact"
  match "careers" => "about#careers"
  match "declaration" => "about#declaration"
  
  root :to => 'start#index'
  
end
