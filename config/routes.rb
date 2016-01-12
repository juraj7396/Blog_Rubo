Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  devise_for :users
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  
  root to: "posts#index"
  get '/users' => "admin#users"
  get '/make_admin/:id' => "admin#make_admin"
  get '/remove_admin/:id' => "admin#remove_admin"
  post '/pic' => "avatar#update"
end
