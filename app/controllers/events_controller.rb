class EventsController < ApplicationController

    def index
        events = Event.all
        render json: events
    end

    def create
        user = get_current_user
        event = Event.find_by(prarms[:book_id])
        if event
            if user.events.include?(event)
                render json: {error: 'You are already attending this event'}, status: 401
            else
                render json(event_id: event.id, user_id: user.id)
            end
        else
            event = Event.create(event_params)
            render json(event_id: event.id, user_id: user.id)
        end
    end


    def destroy
        user = get_current_user
        ticket = user.tickets.find{|ticket| ticket.event_id == params[:id].to_i}
        ticket.destroy
    end


    private 

    def book_params
        params.require(:book).permit(:title, :game, :description, :date, :location)
    end
end