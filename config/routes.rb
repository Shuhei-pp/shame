Rails.application.routes.draw do
  devise_for :users
  #get 'home/top'=>"home#top"
  #get '/'=>"home#top"
  #post 'home/write'=>"home#write"
  #get 'home/:id'=>"home#delete"

  get '/' => "export#form"
  get 'export/form' => "export#form"
  get 'export/form/:id' => "export#form"
  post 'export/form' => "export#form"
  post 'export/post/:id' => "export#post"
  get 'export/result' => "export#result"

  # get 'users/login' => "users#login_form"
  # post 'users/login' => "users#login"
  # get 'users/logout' => "users#logout"
  # get 'users/signup_form' => "users#signup_form"
  # post 'users/signup' => "users#signup"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
