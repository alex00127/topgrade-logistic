class Task < ActiveRecord::Base
	has_many :orders
end
