class SessionsController < ApiController
    def create
        user = User.find_by(username: params[:username])
  
        if user && user.authenticate(params[:password])
          session[:api_token] = user.api_token
          render json: user.to_json
        else
            render json: { error: "Invalid credentials" }, status: :unauthorized
        end
    end
  
    def destroy
      session[:user_id] = nil
    end 
end
