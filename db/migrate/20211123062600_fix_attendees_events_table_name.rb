class FixAttendeesEventsTableName < ActiveRecord::Migration[6.1]
  def change
    rename_table :atendees_events, :attendees_events
  end
end
