class WelcomeController < ApplicationController
  def home
    @checkin = Checkin.new
  end

  def index
  end
end
