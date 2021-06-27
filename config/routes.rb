Rails.application.routes.draw do
  #get 'home/top'=>"home#top"
  #get '/'=>"home#top"
  #post 'home/write'=>"home#write"
  #get 'home/:id'=>"home#delete"

  get '/' => "export#form"
  get 'export/form' => "export#form"
  get 'export/form/:id' => "export#form"
  post 'export/form' => "export#form"
  post 'export/post/1' => "export#post1"
  post 'export/post/2' => "export#post2"
  post 'export/post/3' => "export#post3"
  post 'export/post/4' => "export#post4"
  post 'export/post/5' => "export#post5"
  get 'export/result' => "export#result"

  get 'users/login' => "users#login_form"
  post 'users/login' => "users#login"
  get 'users/logout' => "users#logout"
  get 'users/signup' => "users#signup"
  post 'users/signup' => "users#signup"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
