Rails.application.routes.draw do
  Student.create!(first_name: "John", last_name: "Doe")
  resources :students, only: :index
  resources :students, only: :show

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  # get "students/:id", to: "students#show"
end
