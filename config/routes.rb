Rails.application.routes.draw do
  get 'admin', to: 'admin#index'

  get 'admin/login'

  post 'admin/checkLogin', to: 'admin#checkLogin'

  get 'admin/logOut'

  get 'admin/newUser'

  get 'admin/newProduct'

  get 'admin/updateUser'

  get 'admin/updateProduct'

  get 'admin/destroyUser'

  get 'admin/destroyProduct'

  get 'admin/showProduct'

  get '/admin/newSize'

  get 'admin/editUser/:id', to: 'admin#editUser', as: 'editUser'
  get 'admin/editProduct/:id', to: 'admin#editProduct', as: 'editProduct'

    #resources :users
    #get '/user/new' => 'users#new'
    namespace 'api' do
      namespace 'v1' do
        resources :users, only:[:create, :destroy, :show, :index]
        post '/users/:id', to: 'users#update'
        resources :products, only:[:create, :destroy, :show, :index]
        post '/products/:id', to: 'products#update'
        resources :sizes
        post '/login', to: 'users#login'
        get '/trending', to: 'products#trending'
        get 'carousel', to: 'products#carousel'
        get '/search/:search', to: 'products#search'
      end
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
