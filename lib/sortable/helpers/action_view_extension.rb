module Sortable
  module ActionViewExtension
    def sortable(column, title = nil)
      title ||= column.titleize
      direction = column == params[:sort] && params[:direction] == "asc" ? "desc" : "asc"
      css_class = column == params[:sort] ? "current #{direction}" : nil
      link_to title, {:sort => column, :direction => direction}, {:class => css_class}
    end
  end
end