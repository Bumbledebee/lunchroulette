LunchRoulette::Application.routes.draw do
  
  resources :places do
    resources :comments
  end

  match '/auth/:provider/callback' => 'authentications#create'
 
  root :to => 'roulette#signup'
  match 'spin' => 'roulette#spin'
  match 'logout' => 'authentications#destroy'


  resources :players, :only => [:create, :show, :new, :update]
end
