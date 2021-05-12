Rails.application.routes.draw do
  resources :author do
    member do
      get :delete
    end
    post 'book' => 'author#book_create', as: 'book_create'
  end
  # resources :supplier do
  #   member do
  #     get :delete
  #   end
  # end
end
