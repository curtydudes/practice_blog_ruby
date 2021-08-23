Rails.application.routes.draw do
  resources :form_newspapers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #routes are plural
  # get {any name} => {controller}
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new'
  get '/articles/name/:name' => 'articles#find_name'
  get '/articles/:id' => 'articles#show', as: 'article_show'
  delete '/articles/:id' => 'articles#delete', as: 'article_delete'
  get '/articles/:id/edit' => 'articles#edit', as: 'article_edit'
  put '/articles/:id' => 'articles#update', as: 'article_update'
  post '/articles' => 'articles#create', as: 'article_create'

end
