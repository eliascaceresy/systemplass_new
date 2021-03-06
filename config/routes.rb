Rails.application.routes.draw do

  resources :quotations,only:[:create]
  resources :products,only:[:index,:show]

  devise_for :users, path_names: { sign_in: 'login'}
  root "main#home"
  get '/about',to: 'main#about'
  get '/contact',to: 'main#contact'
  get '/services',to: 'main#services'
  get '/admin',to: 'admin#index'
  resources :products,only:[:index,:show]

  namespace :administration do
    resources :categories,except:[:destroy]
    resources :products
    resources :quotations,only:[:index,:show]
  end
end
