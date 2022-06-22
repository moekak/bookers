Rails.application.routes.draw do
  get 'books/' => 'books#new'
  post 'books' => 'books#create'
  get 'books/index'
  get 'books/:id' => 'books#show', as: 'books_show'
  get 'books/:id/edit' => 'books#edit', as: 'edit_books'
  patch 'books/:id' => 'books#update', as: 'update_books'
  delete 'books/:id' => 'books#destroy', as: 'destroy_books'
  get '/' =>'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
