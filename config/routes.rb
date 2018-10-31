Rails.application.routes.draw do
  resources :product_images
  resources :products
  resources :categories
  devise_for :users
  
  resources :tests

root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'new-product-image/:cid', to: 'product_images#new', as: :add_new_product_image
  get 'product-image-list/:cid', to: 'product_images#index', as: :product_image_list

end
