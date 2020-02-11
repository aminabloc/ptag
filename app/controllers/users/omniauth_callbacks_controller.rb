class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def facebook
        @user = UserProvider.find_for_facebook_oauth(request.env["omniauth.auth"])

        if @user.persisted?
          sign_in_and_redirect @user, :event => :authentication  
        else
          session["devise.facebook_data"] = request.env["omniauth.auth"]
          redirect_to new_user_registration_url
        end
    end
    
    def instagram
        @user = UserProvider.find_for_instagram_oauth(request.env["omniauth.auth"])
        
              
     
        puts response.body
        

        if @user.persisted?
          sign_in_and_redirect @user, :event => :authentication               
        else
          session["devise.instagram_data"] = request.env["omniauth.auth"]
          redirect_to new_user_registration_url
        end
    end
end 