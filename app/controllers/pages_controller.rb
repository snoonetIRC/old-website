class PagesController < ApplicationController
  caches_page :show
  cache_sweeper :pages_sweeper
  before_filter(only: :show) { @page_caching = true }
  def show
    @page = Page.find_by_permalink!(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
      format.nolayout { render nolayout: @page, template: 'pages/show.html' }
    end
  end
end
