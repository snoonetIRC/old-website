class PagesSweeper < ActionController::Caching::Sweeper
  observe Page

  def sweep(page)
    expire_page pages_path
    expire_page pages_path(page)
  end

  alias_method :after_update, :sweep
  alias_method :after_create, :sweep
  alias_method :after_destroy, :sweep
end
