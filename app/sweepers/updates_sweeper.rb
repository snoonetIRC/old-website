class UpdatesSweeper < ActionController::Caching::Sweeper
  observe Update

  def sweep(update)
    expire_page updates_path
    expire_page updates_path(update)
    expire_page '/'
  end

  alias_method :after_update, :sweep
  alias_method :after_create, :sweep
  alias_method :after_destroy, :sweep
end
