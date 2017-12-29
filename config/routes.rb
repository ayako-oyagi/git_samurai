Rails.application.routes.draw do
  # get 'samurais' => 'samurais#index'
  # get 'samurais/new'  =>  'samurais#new'
  # post 'samurais/new'      =>  'samurais#create'
  # get 'samurais/search'   =>  'samurais#search'
  # get   'samurais/:id'   =>  'samurais#show'

#   get 'samurais/:name_id/reviews/new' => 'reviews#new'
#   post 'samurais/:name_id/reviews' => 'reviews#create'
  
resources:samurais do
  resources:comments, only: [:create]
  end
 
 resources :questions, only: [:new,:create,:show] do
 resources :answers, only: [:create,:index]
end

  root 'samurais#index'

end
