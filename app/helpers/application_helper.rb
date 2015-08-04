module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    if logged_in?
      base_title = "Our own application <3"
    else
      base_title = "Project C.A.T"
    end
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
