module BackgroundCategoriesHelper
  def background_category(category)
    case category
    when "Nourriture"
      return "background-color-program-food"
    when "Déchets"
      return "background-color-program-waste"
    when "Energie"
      return "background-color-program-energy"
    when "Transport"
      return "background-color-program-transport"
    end
  end
end
