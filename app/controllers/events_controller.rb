class EventsController < ApplicationController
    def index
        @events = Event.all
    end

    def show
        @event = Event.find(params[:event_id])
    end

    def new
        @event = Event.new()
    end

    def created
        @event = current_user.created_events.build(event_params)
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
