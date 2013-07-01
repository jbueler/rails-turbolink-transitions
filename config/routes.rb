TurbolinkTransitions::Application.routes.draw do
  root "transitions#index"
  get '/:id' => 'transitions#index', as: :transition_demo
end
