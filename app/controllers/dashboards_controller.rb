class DashboardsController < ApplicationController
  def index
    @customers = Customer.all
  end
end
