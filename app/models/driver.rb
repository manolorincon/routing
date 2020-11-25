class Driver < ActiveRecord::Base
    belongs_to :vehicles, optional: true
    has_many :routes
end
