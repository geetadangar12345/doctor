Rails.application.routes.draw do
  root "home#index"
  devise_for :patients
  devise_for :users
  resources :doctors
  resources :patients
  resources :appointments

  get 'search_doc' => "patients#search"
  get 'reject' => "doctors#reject"
  get 'accept' => "doctors#accept"
  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end
  devise_scope :patient do
      get 'patients/sign_out' => "devise/sessions#destroy"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
