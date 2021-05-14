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

  # resources :supp do
  #   member do
  #     get :delete
  #   end
  #   patch 'account_history' => 'supp#history_update', as: 'update_history'
  # end

  # resources :teacher do
  #   member do
  #     get :delete
  #   end
  #   post 'student' => 'teacher#create_student', as: 'create_student'
  # end

  resources :employee do
    member do
      get :delete
    end
    post 'product' => 'employee#create_product', as: 'create_product'
    post 'picture' => 'employee#create_employee_picture', as: 'create_employee_picture'
    get 'show_product' => 'employee#show_product', as: 'show_product'
    post 'product_picture' => 'employee#create_product_picture', as: 'create_product_picture'  
  end

end
