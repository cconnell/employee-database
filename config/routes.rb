Rails.application.routes.draw do
 get '/one' => 'employees#single'

 get '/' => 'employees#index'
 get '/index' => 'employees#index'

 get '/employees/:id/edit' => 'employees#edit'
 patch '/employees/:id/' => 'employees#update'

 get '/employees/new' => 'employees#new'
 post '/employees' => 'employees#create'

 get '/employees/:id' => 'employees#show'

 delete '/employees/:id' => 'employees#destroy'
end
