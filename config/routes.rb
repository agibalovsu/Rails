Rails.application.routes.draw do
  get '/about', to: 'info_pages#about'
  get '/about/author', to: 'info_pages#author'
end
