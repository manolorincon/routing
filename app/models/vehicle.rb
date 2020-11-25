class Vehicle < ActiveRecord::Base
    has_one :driver
    belongs_to :driver, optional: true
end
