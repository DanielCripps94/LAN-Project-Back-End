class UsersController < ApplicationController

    def signin
        user = User.find_by(username: params[:username])
        if user and user.authenticate(params[:password])
            render json: {username: user.username, token: issue_token({ id: user.id})}
        else  
            render json: {error: 'Username/password invald.'}, status: 403
        end
    end

    def validate
        user = get_current_user
        if user
            render json: {username: user.username, token: issue_token({ id: user.id})}
        else
            render json: {error: 'You are not authorized'}, status: 401
        end
    end

    
    def signup
        user = User.create(user_params)
        render json: { username: user.username, token: issue_token({ id: user.id})}
    end

    def user_events
        user = get_current_user
    
        userEvents = user.events

        if user
            render json: userEvents
        else
            render json: {error: 'You are not authorized'}, status: 401
        end
    end

    def user_hosted_events
        user = get_current_user
        events = Event.select{|event| event.user == user}
        if events
            render json: events
        else
            render json: {error: 'you have no hosted events'}, status: 401
        end    
    end


    private 

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end

end
