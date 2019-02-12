Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'articles/new', to: 'articles#new'
  post 'articles', to: 'articles#create'
  # Read
  get 'index', to: 'articles#index'
  get 'articles/:id', to: 'articles#show'
  # Update
  get 'articles/:id/edit', to: 'articles#edit'
  patch 'articles/:id', to: 'articles#update', as: 'article'
  # Delete
  delete 'articles/:id', to: 'articles#destroy'
end
