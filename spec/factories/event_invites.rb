# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event_invite do
    attendee_id 1
    attended_event 1
  end
end
