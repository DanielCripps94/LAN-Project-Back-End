class EventsController < ApplicationController

    def index
        events = Event.all
        render json: events
    end

    def destroy
        user = get_current_user
        ticket = user.tickets.find{|ticket| ticket.event_id == params[:id].to_i}
        ticket.destroy
    end
end