Rails.application.routes.draw do
 get '/one' => 'employees#worker'

 get '/' => 'employees#index'
 get '/index' => 'employees#index'

 # get '/employee/:id/edit' => 'employees#edit'
 # patch '/employee/:id' => 'employees#update'

 # get '/employee/new' => 'employees#new'
 # post '/employee/:id' => 'employees#create'

 get '/employee/:id' => 'employees#show'

 # get '/employee/:id' => 'employees#destroy'
end
