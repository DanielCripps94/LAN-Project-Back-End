class TicketsController < ApplicationController

    def index 
        tickets = Tickets.all 
        render json: tickets
    end

    def create
        user = User.find_by(username: ticket_params[:user])
        ticket = Ticket.new(event_id: ticket_params[:event_id])
        ticket[:user_id] = user.id
        ticket.save
        render json: ticket
    end

    private

    def ticket_params
        params.require(:ticket).permit(:event_id, :user)
    end

end