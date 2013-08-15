class PagesController < ApplicationController
  def index
    @links = Link
  end
end
