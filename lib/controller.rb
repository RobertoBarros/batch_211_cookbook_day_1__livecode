require_relative 'view'
class Controller

  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_recipes
  end

  def create
    # Ask recipe name
    name = @view.ask_recipe_name
    # Ask recipe description
    description = @view.ask_recipe_description
    # Create a new recipe
    new_recipe = Recipe.new(description: description, name: name)
    # Add recipe in cookbook
    @cookbook.add_recipe(new_recipe)
  end

  def destroy
    # Display all recipes
    display_recipes
    # ask recipe index to remove
    index = @view.ask_index
    # Call cookbook to remove by index
    @cookbook.remove_recipe(index)
  end

  private

  def display_recipes
    # Get all recipes from cookbook
    recipes = @cookbook.all
    # Call view with all recipes
    @view.display(recipes)
  end
end


