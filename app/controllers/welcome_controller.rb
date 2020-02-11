class WelcomeController < ApplicationController
    before_action :authenticate_user!
  def home
   @video = Video.new
    
    
    require "browser"

    browser = Browser.new("Some User Agent", accept_language: "en-us")
    puts "Printing id"
    
    puts browser.device
    puts browser.device.id
    puts browser.device.name
    
    puts browser.platform.id
    
    device = Device.where(id: current_user.id)
    if device 
        puts "device id"
        
        #puts device.first.id
        #puts device.first.name
    end
    
    if device == nil or device == []
        Device.create(user_id: current_user , 
                        name: browser.device.name,  
                        device_id: browser.device.id ,
                        platform_name: browser.platform.name, 
                        platform_id: browser.platform.id)
        end 
        
    
  end 
  

  def index
  end
end
