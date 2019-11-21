module BadgeTaskHelper
  def current_badge(category)
    case category
    when "Nourriture"
      return "bt-yellow"
    when "Déchets"
      return "bt-green"
    when "Energie"
      return "bt-blue"
    when "Transport"
      return "bt-red"
    end
  end
end
