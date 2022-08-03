Rails.application.routes.draw do
  devise_for :students, controllers: {
    registrations: 'students/registrations'
  }
  devise_for :teachers
  devise_for :admins

  root to: "home#index"
  resources :details, only: [:edit, :update]
  resources :academics
  resources :students
  resources :teachers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
