module ApplicationHelper
  def french_pluralize(count, singular, plural)
    count > 1 ? "#{count} #{plural}" : "#{count} #{singular}"
  end
end
