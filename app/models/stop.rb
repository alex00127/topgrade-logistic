class Stop < ActiveRecord::Base
	belongs_to :order
	belongs_to :charge
end
