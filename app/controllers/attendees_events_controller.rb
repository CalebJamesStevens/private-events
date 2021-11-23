class AttendeesEventsController < ApplicationController
    def create
        @event = Event.find(params[:event_id])
        puts "HIIIIIIIIIIIIIIIIIIIIIIIII #{@event}"
        @attendee = AttendeesEvent.new(event_id: @event.id, user_id: current_user.id)
        if @attendee.save
            redirect_to event_path(@event)
        else
            flash[:alert] = "Uh oh..."
            redirect_to @event
        end
    end
end
