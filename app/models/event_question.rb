class EventQuestion < ActiveRecord::Base
  attr_accessible :event_id, :prompt
  has_one :event
  
end
