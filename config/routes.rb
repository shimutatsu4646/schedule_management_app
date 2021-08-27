Rails.application.routes.draw do
  
  root 'schedules#index'
  # get 'schedules/index'
  # get 'schedules/show'
  # get 'schedules/new'
  # get 'schedules/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :schedules

end
