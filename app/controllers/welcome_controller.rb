class WelcomeController < ApplicationController
    before_action :authenticate_user!
  def home
   @video = Video.new
    
  end 
  

  def index
  end
end
