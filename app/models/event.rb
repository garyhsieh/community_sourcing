class Event < ActiveRecord::Base
  attr_accessible :date_end, :date_start, :description, :image_url, :location, :title
  has_many :event_question

end
