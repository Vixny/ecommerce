class DashboardsController < ApplicationController
  def index
    @customers = Customer.all
    @medications = Medication.all
  end
end
