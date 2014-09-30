class Event < ActiveRecord::Base

  has_many :event_invites, :foreign_key => :attended_event_id
  has_many :attendees, :through => :event_invites
  belongs_to :creator, :class_name => "User"
end
