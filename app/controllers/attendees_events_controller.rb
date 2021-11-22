class AttendeesEventsController < ApplicationController
    def created
        @event = Event.find(params[:event_id])
        @attendee = AttendeesEvent.new(event_id: @event.id, user_id: params[:user_id])
        if @attendee.save
            redirect_to @event
        else
            flash[:alert] = "Uh oh..."
            redirect_to @event
        end
    end
end
