class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :event_invites, :attended_event, :attended_event_id
  end
end
