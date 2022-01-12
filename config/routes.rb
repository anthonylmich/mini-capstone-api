Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get "/products_all", controller: "products", action: "products_all"
get "/first_product", controller: "products", action: "first_product"
get "/last_product", controller: "products", action: "last_product"
get "/second_product", controller: "products", action: "second_product"
get "/third_product", controller: "products", action: "third_product"
get "/fourth_product", controller: "products", action: "fourth_product"
  # Defines the root path route ("/")
  # root "articles#index"
end
