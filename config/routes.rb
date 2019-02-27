Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'restaurants', to: 'restaurants#index', as: 'restaurants'
  get 'restaurants/new', to: 'restaurants#new', as: 'restaurant_new'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  get 'restaurant/:id/edit', to: 'restaurants#edit', as: 'restaurant_edit'
  patch 'restaurants/:id', to: 'restaurants#update'
  delete 'restaurants/:id', to: 'restaurants#destroy', as: 'restaurant_delete'

  get 'restaurants/:id/reviews/new', to: 'reviews#new', as: 'reviews_new'
  post 'restaurant/:id/reviews', to: 'reviews#create', as: 'restaurant_reviews'

end
