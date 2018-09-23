Rails.application.routes.draw do
  devise_for :users, path: '/',
    controllers: {
      sessions: 'devise/sessions',
      registrations: 'devise/registrations',
      passwords: 'devise/passwords'
    }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
