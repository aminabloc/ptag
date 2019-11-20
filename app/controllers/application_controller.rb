class ApplicationController < ActionController::Base
    after_action :pageview
     
    def pageview
        if current_user 
          user_id = current_user.id 
        else
          user_id = nil 
        end
        
        Pageview.create :user_id              => user_id,
                        :referer              => request.referrer,
                        :session              => request.session_options[:id],
                        :ip_address           => request.remote_ip,
                        :user_agent           => request.env["HTTP_USER_AGENT"],
                        :created_at           => Time.current
      end

end
