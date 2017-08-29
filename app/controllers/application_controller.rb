class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :populate_nav

  def populate_nav
    @links = Page.where(indexpertise: false)
    @indexpertise = Page.where(indexpertise: true).first
  end
end
