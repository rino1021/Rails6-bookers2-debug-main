Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'homes#top'

  resources :users, only: [:index,:show,:edit,:update] do
    resource :relationships, only: [:create,:destroy,:show]
    get '/followers'=>'relationships#followers'
    get '/followings'=>'relationships#followings'

  end

  resources :books do

  resource :favorites,only: [:create,:destroy]
  resources :book_comments,only:[:create,:destroy]


end


  get "home/about"=>"homes#about"

end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

