class Order < ActiveRecord::Base
  validates_presence_of :shipper, :shipper_add , :shipper_tel, :shipping_time

	has_many :stops, :dependent => :destroy
  belongs_to :user
  belongs_to :ton
  belongs_to :task

  accepts_nested_attributes_for :stops,
                                :allow_destroy => true,
                                :reject_if => :all_blank

end
