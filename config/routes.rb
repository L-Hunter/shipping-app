Rails.application.routes.draw do


  get 'boats/index'

  get 'boats/show'

  get 'profiles/index'

  get 'profiles/show'

  get 'static_pages/home'

  get 'static_pages/about'

  get '/boats/make_available/:id', to: 'boats#make_available', as: :make_available

  post '/jobs/add_to_job/:id', to: 'jobs#add_to_job', as: :add_to_job

  post '/jobs/remove_from_job/:id', to: 'jobs#remove_from_job', as: :remove_from_job


  resources :jobs, :boats, :profiles

  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
      
      get '/' => 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
