class ApplicationController < ActionController::API

    def current_user
        token = request.headers['Access-Token'] 

        user_id = JWT.decode(token, 'mys3cr3t')
        
        current = User.find(user_id)
    end



    def authorize
        unless current_user return nil 
    end


end
