Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get "/products" => "products#index"
post "/products" => "products#create"
get "/products/:id" => "products#show"
get "/choose_product" => "products#product"
patch "/products/:id" => "products#update"
delete "/products/:id" => "products#delete"
  
post "/users" => "users#create"
post "/sessions" => "sessions#create"

 post "/orders" => "orders#create"
 get "/orders/:id" => "orders#show"
 get "/orders" => "orders#index"
# post "/orders/:id" => "orders#show"
post "/carts" => "carted_products#create"
get "/carts" => "carted_products#index"
post "/carts" => "carted_products#destroy"

end
