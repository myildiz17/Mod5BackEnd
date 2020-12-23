
class AuthController < ApplicationController

    def create
      user = Teacher.find_by(username: params[:username]) 
  
      if user && user.authenticate(params[:password])
        payload = { user_id: user.id }

        token = JWT.encode(payload, 'secret_key', 'HS256')
        render json: { user: {id: user.id, username: user.username},  sections: user.sections, token: token }
      else
        render json: { error: 'Invalid username/password.' }, status: 401
      end
    end


    def show
        token = request.headers[:Authorization].split(' ')[1]
        decoded_token = JWT.decode(token, 'secret_key', true, {algorithm: 'HS256'})
        user_id = decoded_token[0]['user_id']
        user = Teacher.find(user_id)
        render json: { user: {id: user.id, username: user.username},  sections: user.sections }
    end
  end