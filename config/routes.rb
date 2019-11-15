Rails.application.routes.draw do
 
  devise_for :users, :controllers => {:registrations => "users/registrations"}
 
  devise_scope :user do
      get '/admin', to: 'users/sessions#new'
  end

  root 'welcome#index'
  
  resources :roles
  
  resources :programs
  resources :calendars

end
