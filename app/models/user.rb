class User < ActiveRecord::Base
  has_many :event_invites, :foreign_key => :attendee_id
  has_many :attended_events, :through => :event_invites
  has_many :created_events, :foreign_key => "creator_id", :class_name => "Event"

end
