class View

  def display(recipes)
    puts '-' * 80
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name}: #{recipe.description}"
    end
    puts '-' * 80
  end

  def ask_recipe_name
    puts "What is the recipe name?"
    gets.chomp
  end

  def ask_recipe_description
    puts "Enter the recipe description:"
    gets.chomp
  end

  def ask_index
    puts "Enter index:"
    gets.chomp.to_i - 1
  end

end