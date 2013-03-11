class PagesController < ApplicationController
  def show
    @page = Page.find_by_permalink!(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
      format.nolayout { render nolayout: @page, layout: 'nolayout', template: 'pages/show.html' }
    end
  end
end
