Rails.application.routes.draw do
  resources :user_infos
  resources :comments
  resources :favorite_lists
  # devise_for :users
  devise_for :users, controllers: {
  passwords: 'users/passwords',
  registrations: 'users/registrations',
  sessions: 'users/sessions'
}


  root 'products#index'

  namespace :admin do
    resources :products
    resources :orders do
      member do
        post :cancel
        post :ship
        post :shipped
        post :return
      end
    end
  end

  resources :products do
    member do
      post :add_to_cart
      post :add_quantity
      post :reduce_quantity
    end

    collection do
      get :search
    end

    put :favorite, on: :member
    resources :favorite_lists

    resources :comments
  end

  resources :categories

  resources :carts do
    collection do
      delete :clean
      get :checkout
      post :checkout
    end
  end

  resources :cart_items do
    member do
      post :add_quantity
    end
  end

  resources :orders do
     member do
       post :pay_with_alipay
       post :pay_with_wechat
     end
  end

  namespace :account do
    resources :orders do
      collection do
      get :coupon
      get :profile
      get :address
      get :support
      end
    end
  end
end
