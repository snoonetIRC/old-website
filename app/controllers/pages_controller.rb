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

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)

    if @page.save
      redirect_to @page
    else
      render action: :new
    end
  end

  def root
  end

  private

  def page_params
    params.require(:page).permit(:name, :permalink, :content_markdown)
  end

end
