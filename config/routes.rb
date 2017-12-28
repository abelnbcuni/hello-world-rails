Rails.application.routes.draw do
  #get 'mysql/index'
  #get 'mysql/edit'
  #get 'home/index'

  get '/', to: 'home#index'
  get '/mysql', to: 'mysql#index'
  get '/redis', to: 'redis#index'
  post '/mysql/new', to: 'mysql#save'
  get 'mysql/new', to: 'mysql#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
