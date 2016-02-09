class OrdersController < ApplicationController
	
	def index

	end

	def new
	  @order = Order.new
	  @order.stops.build
	end

	def create
		@order = Order.new(order_params)

		if @order.save
		  redirect_to orders_path
  		flash[:notice] = "下單成功,送貨人員將於當日與您聯繫"
		else
			render :action => :new
		end
	end

  protected

  def order_params 
    params.require(:order).permit(:name, :email, :shipper, :shipper_add, :shipper_tel, :weight, :volume,:shipping_time, :remark, :stops_attributes => [:consignee, :consignee_add, :consignee_tel, :item, :qty])
  end 

end
