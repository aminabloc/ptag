class UserProvider < ApplicationRecord
  belongs_to :user
  
  def self.find_for_facebook_oauth(auth)

        user = UserProvider.where(:provider => auth.provider, :uid => auth.uid).first
        unless user.nil?
            user.user
        else
            registered_user = User.where(:email => auth.info.email).first
            unless registered_user.nil?
                        UserProvider.create!(
                              provider: auth.provider,
                              uid: auth.uid,
                              user_id: registered_user.id
                              )
                registered_user
            else
                user = User.create!(
                    name: auth.info.name,
                            email: auth.info.email,
                            password: Devise.friendly_token[0,20],
                            )
                user_provider = UserProvider.create!(
                    provider:auth.provider,
                            uid:auth.uid,
                              user_id: user.id
                    )
                user
            end
        end
    end
    
    def self.find_for_instagram_oauth(auth)

        user = UserProvider.where(:provider => auth.provider, :uid => auth.uid).first
        unless user.nil?
            user.user
        else
        
        puts auth

        puts auth.credentials.token
       
    

                
            registered_user = User.where(:email => auth.info.email).first
            unless registered_user.nil?
                        UserProvider.create!(
                              provider: auth.provider,
                              uid: auth.uid,
                              user_id: registered_user.id,
                              #token: auth.credentials.token
                              )
                registered_user
                
                
            else
                user = User.create!(
                    name: auth.info.name,
                            email: auth.info.nickname + Devise.friendly_token[0,4].to_s + "@example.com",
                            password: Devise.friendly_token[0,20],
                            #ig_bio: auth.info.bio,
                            #ig_is_business: auth.info.is_business,
                            #ig_website: auth.info.website,
                            #ig_image: auth.info.image,
                            )
                user_provider = UserProvider.create!(
                    provider:auth.provider,
                            uid:auth.uid,
                              user_id: user.id,
                              #token: auth.credentials.token
                    )

                user
            end
        end
    end
end
