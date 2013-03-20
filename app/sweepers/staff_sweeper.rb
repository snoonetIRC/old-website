class StaffSweeper < ActionController::Caching::Sweeper
  observe Staff

  def sweep(staff)
    expire_staff staffs_path
    expire_staff staffs_path(staff)
  end

  alias_method :after_update, :sweep
  alias_method :after_create, :sweep
  alias_method :after_destroy, :sweep
end
