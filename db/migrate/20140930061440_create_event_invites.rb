class CreateEventInvites < ActiveRecord::Migration

  def change
    create_table :event_invites do |t|
      t.integer :attendee_id
      t.integer :attended_event

      t.timestamps
    end
  end
end
