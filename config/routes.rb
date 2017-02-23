Rails.application.routes.draw do
  get 'library/index'

  get 'library/show'

  get 'welcome/index'

  root 'welcome#index'

  resources :articles do resources :comments
  end
end
