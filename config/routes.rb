Rails.application.routes.draw do
 
devise_for :users
root to: "employees#index"

 get '/one' => 'employees#single'

 get '/' => 'employees#index'
 get '/index' => 'employees#index'

 get '/employees/:id/edit' => 'employees#edit'
 patch '/employees/:id/' => 'employees#update'

 get '/employees/new' => 'employees#new'
 post '/employees' => 'employees#create'

 get '/employees/random' => 'employees#random'
 get '/employees/:id' => 'employees#show'

 delete '/employees/:id' => 'employees#destroy'

 post '/search' => 'employees#search'
end
