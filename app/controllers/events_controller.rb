class EventsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    def index
        @events = Event.all
    end

    def show
        @event = Event.find(params[:id])
    end

    def new
        @event = Event.new()
    end

    def create
        
        @event = current_user.created_events.build(event_params)
        puts "EVENTS CERATOR IS #{@event.creator}"
        if (@event.save)
            redirect_to @event
        else
            render :new
        end
    end
    

    private

    def event_params
        params.require(:event).permit(:event_name, :event_location, :event_date)
    end

end
