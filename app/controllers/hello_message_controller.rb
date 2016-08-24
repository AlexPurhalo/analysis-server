class HelloMessageController < ActionController::Base
  def index
    auth_token = request.headers['authorization']
    if auth_token
      render json: { message: "Happy to see you here :)"}
    else
      render json: { message: "Sorry you need to sign in :("}
    end
  end
end