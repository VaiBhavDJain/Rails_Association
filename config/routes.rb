Rails.application.routes.draw do
  # resources :author do
  #   member do
  #     get :delete
  #   end
  #   post 'book' => 'author#book_create', as: 'book_create'
  # end
  # resources :supplier do
  #   member do
  #     get :delete
  #   end
  # end
  # resources :physician do
  #   member do
  #     get :delete
  #   end
  #   post 'appointment' => 'physician#create_appointment', as: 'create_appointment'
  #   post 'patient' => 'physician#create_patient', as: 'create_patient'
  # end

  resources :supp do
    member do
      get :delete
    end
  end
end
