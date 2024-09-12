module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    current_direction = (params[:sort] == column) ? params[:direction] : nil
    next_direction = (current_direction == 'asc') ? 'desc' : 'asc'
    link_to title, { sort: column, direction: next_direction, current_direction: current_direction }
  end
end
