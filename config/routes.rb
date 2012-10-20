LunchRoulette::Application.routes.draw do
  match '/auth/:provider/callback' => 'authentications#create'
 
  root :to => 'roulette#signup'
  match 'spin' => 'roulette#spin'

  resources :players, :only => [:create, :show, :new]
end
