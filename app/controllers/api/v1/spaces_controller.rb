class Api::V1::SpacesController < Api::V1::BaseController
  def index
    @spaces = Space.all
  end
  #config/routes.rb
root to: categories
resources :categories

#app/controllers/categories_controller.rb
def index
    @categories = Category.all
end

def show
    @category = Category.find(params[:id])
end

#app/views/categories/restaurants
<% for category in @categories do %>
    <%= link_to category.name, category %>
<% end %>
end
