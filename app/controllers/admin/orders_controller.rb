class Admin::OrdersController < ApplicationController
    before_action :authenticate_user!

    before_action  :check_admin

    layout "admin"

    def index
      @orders=Order.where(:status => "new")
    end

    protected

    def check_admin
      unless current_user.admin?
        flash[:alert] = "Not allow!"
        redirect_to events_path
      end
    end

end
