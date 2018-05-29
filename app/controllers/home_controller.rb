class HomeController < ApplicationController
  before_action :set_houses, only: [:search]
  def index
  end

  def search 
  end

  private

  def set_houses
    @searched_houses = House.all.where('city LIKE ?', "%#{params[:city]}%")
  end
end
