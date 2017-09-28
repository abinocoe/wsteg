class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :populate_nav

  def populate_nav
    @links = Page.where(indexpertise: false).where('nav_position >0 AND nav_position <4').order('nav_position')
    @post_links = Page.where(indexpertise: false).where('nav_position >=6').order('nav_position')
    @indexpertise = Page.where(indexpertise: true).first
  end
end
