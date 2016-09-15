Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/' => 'users#login'
get '/home' => 'users#home'
get '/resume' => 'users#resume'
end
