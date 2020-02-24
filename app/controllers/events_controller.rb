class EventsController < ApplicationController

    def index
        events = Event.all
        render json: events
    end

    def create
        user = User.find_by(username: params[:event][:user])
            event = Event.new(event_params)
            event[:user_id] = user.id
            event.save
            if event 
            render json: event
            else 
            render json: {error: 'You are not authorized'}, status: 401
        end
    end


    def destroy
        user = get_current_user
        ticket = user.tickets.find{|ticket| ticket.event_id == params[:id].to_i}
        ticket.destroy
    end


    private 

    def event_params
        params.require(:event).permit(:title, :game, :description, :date, :location)
    end
end