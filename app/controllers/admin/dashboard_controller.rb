class Admin::DashboardController < ApplicationController

  before_action :authenticate_admin!
  layout 'admin'

  def index
     @prizes = Prize.all

  end

end
