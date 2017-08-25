class HomeController < ApplicationController
  
  def index
    @activities = Activity.all.order(created_at: :desc)
  end
  
  
  
end
