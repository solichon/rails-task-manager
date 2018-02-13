Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # CREATE
  # permet d'afficher le formulaire à remplir
  get "tasks/new", to: "tasks#new"

  # permet de soumettre les champs remplis par l'user
  post "tasks", to: "tasks#create"


  # READ
  # Read All
  get "tasks", to: "tasks#index", as: :task

  # Read one
  get "tasks/:id", to:"tasks#show", as: :details


  #UPDATE
  # Donner le formulaire à midifier
  get "tasks/:id/edit", to: "tasks#edit"
  # Soumettre les modifs et enregistrer
  patch "tasks/:id", to: "tasks#update"

  #DELETE
  delete "tasks/:id", to: "tasks#destroy"


end
