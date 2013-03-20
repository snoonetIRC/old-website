class SponsorsSweeper < ActionController::Caching::Sweeper
  observe Sponsor

  def sweep(sponsor)
    expire_sponsor sponsors_path
    expire_sponsor sponsors_path(sponsor)
  end

  alias_method :after_update, :sweep
  alias_method :after_create, :sweep
  alias_method :after_destroy, :sweep
end
