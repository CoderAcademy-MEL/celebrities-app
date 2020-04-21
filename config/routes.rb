Rails.application.routes.draw do
  post "/celebrities", to: "celebrities#create", as: "celebrities"
  get "/celebrities/new", to:"celebrities#new", as: "celebrities_new" 
  get "/celebrities/:id/edit", to: "celebrities#edit", as: "celebrities_edit"
  # localhost:3000/celebrities/3
  get "/celebrities/:id", to: "celebrities#show", as: "celebrity"
  put "/celebrities/:id", to: "celebrities#update"
  patch "/celebrities/:id", to: "celebrities#update"
  delete "/celebrities/:id", to: "celebrities#destroy"
  root to: "celebrities#index"
end

# * We are going to create a new app for celebrities!
# * Create a new rails app, using postgresql as our database
# * Run the server to make sure everything is working
#     * Not working? Did you create your db?

# * Create all the routes we need for a full CRUD resource for celebrities
#     * Actually write them out, don't just use resources

# * Add the code below into our celebrities_controller
# * Create the views for our celebrities controller
#     * For now, we will add the index, show and new view

# * You'll also need to add models and run migrations, a celebrity should have name, notability (what was their most famous movie) and profile_picture (image url) as attributes

# * Alter the controller methods so:
#     * the index view shows all our celebrities
#     * the show view shows one celebrity
#     * the new view will render a form to send a POST request

# * Create a nav section, so that we can navigate between pages, use a partial

# * Style your index, show and new pages using SASS, make sure you abide by SASS best practices in Rails as documented below

# * Create a seeds file to seed celebrities to a DB before you start sending POST requests, check if this data displays on your index and show pages

# * Make sure your form actually create celebrities and redirects to the show page

# * ADVANCED: add update and delete functionality