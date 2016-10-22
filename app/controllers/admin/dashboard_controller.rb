class Admin::DashboardController < ApplicationController

  before_action :authenticate_admin!
  layout 'admin'

  def index
     @prizes = Prize.all
  end

  def show_subscribers
    @subscribers = Subscriber.all
  end

end
