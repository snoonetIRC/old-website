class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def root
  end
end
