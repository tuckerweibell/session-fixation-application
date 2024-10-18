class HomeController < ApplicationController
  def index
    @search_val = params[:search]
  end
end
