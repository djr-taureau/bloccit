Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index]
  end

  resources :advertisements
  resources :questions

  resources :users, only: [:new, :create]

  get 'about' => 'welcome#about'
  
  root 'welcome#index'

  post 'users/confirm' => 'users#confirm'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
