Rails.application.routes.draw do

  
  resources :homepictures, only: [:edit, :update]
  resources :treatments
  resources :testimonials, only: [:new,:create,:edit,:update,:destroy]
  resources :faqs, only: [:index,:new,:create,:edit,:update,:destroy]
  resources :contacts, only: [:new, :create]
  resources :admin
  devise_for :users, skip: [:registrations]
  as :user do
    get "users/edit" => 'devise/registrations#edit', :as => 'edit_user_registration'
    put '/users' => 'devise/registrations#update', :as => 'update_user_registration'
  end

  root 'chironda#index'
end
