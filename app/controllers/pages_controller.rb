class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.where(permalink: params[:permalink]).first

    if @page.nil?
      redirect_to "/404"
    else
      render :show, page: @page
    end
  end

  def root
  end
end
