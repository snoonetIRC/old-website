ActiveAdmin.register Page do
  before_filter except: [:index, :new, :create] do
    @page = Page.find_by_permalink!(params[:id])
  end
end
