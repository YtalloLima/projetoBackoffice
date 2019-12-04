Rails.application.routes.draw do
#reduzi ainda mais o link no navegador
  get 'backoffice', to: 'backoffice/dashboard#index'

  namespace :backoffice do
    # resources e o nome cria todas as rotas para categories, mas nesse caso, informo que não quero o show e nem destroy
    resources :categories, except: [:show, :destroy]
    get 'categories/index'
    get 'dashboard', to: 'dashboard#index'
  end
  namespace :site do
    get 'home', to: 'home#index'
  end


  devise_for :admins
  devise_for :members

  root 'site/home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
