Rails.application.routes.draw do
  # get "/", to:
  # verb -> path -> controller_name -> controller action
  root to: "flats#index"
  get "/flats/:id", to: "flats#show", as: :flat
end

