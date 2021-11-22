class Event < ApplicationRecord
    has_many :attendees_events, foreign_key: "event_id"
    has_many :atendees, through: :attendees_events, source: :user
    belongs_to :creator, class_name: "User"
end