class Route < ActiveRecord::Base
    belongs_to :drivers, optional: true
    belongs_to :vehicles, optional: true
    has_many :stops
end
