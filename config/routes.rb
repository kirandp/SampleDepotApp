Depot::Application.routes.draw do
   
get 'admin' => 'admin#index'

resources :sessions

post "sessions/create"
post 'sessions/new',:as=>'login'
delete 'sessions/destroy', :as=>'logout'  

resources :users
resources :orders
resources :line_items
resources :carts
get "store/index"
resources :products do
get :who_bought, :on => :member
end
# ...
# You can have the root of your site routed with "root"
# just remember to delete public/index.html.
# root :to => "welcome#index"
root :to => 'store#index', :as => 'store'
# ...
end