Rails.application.routes.draw do
 


 root to:  'sessions#welcome'

resources  :users , only:   [:new, :create, :index, :destroy]

resources  :sessions,  only:  [:new, :create, :destroy] 



# # resources  :sessions

# get  'login', to:  'sessions#new'

# post 'login' , to:  'sessions#create'


# delete   'logout' , to:   'sessions#destroy'


# root to: 'sessions#welcome'

  resources :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

# get   'login/edit' , to:  'sessions#edit'

# get   'edit' ,  to:   'sessions#edit'

# put   'update', to:   'sessions#update'

  get   'logout',  to:  'sessions#destroy'
  post  'logout',  to:  'sessions#destroy'

  delete 'logout', to: 'sessions#destroy'


end 






