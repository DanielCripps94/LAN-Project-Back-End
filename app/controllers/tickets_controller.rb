class TicketsController < ApplicationController

    def index 
        tickets = Tickets.all 
        render json: tickets
    end
    
end