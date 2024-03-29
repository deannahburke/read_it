Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/books', to: 'books#index'
  get '/books/new', to: 'books#new'
  get '/books/:book_id/edit', to: 'books#edit'
  post '/books', to: 'books#create'
  patch '/books/:book_id', to: 'books#update'
  delete '/books/:book_id', to: 'books#destroy'

  get '/wishlist', to: 'wishlist#index'
  get '/wishlist/new', to: 'wishlist#new'
  post '/wishlist', to: 'wishlist#create'
  get '/wishlist/:book_id/edit', to: 'wishlist#edit'
  patch '/wishlist/:book_id', to: 'wishlist#update'
end
