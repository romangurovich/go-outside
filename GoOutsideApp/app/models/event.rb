class Event < ActiveRecord::Base
  attr_accessible :description, :host_id, :name
end
