class Driver < ActiveRecord::Base
    has_one :vehicles
    belongs_to :vehicles
    has_many :routes
end
