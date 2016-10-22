class SubscribersController < ApplicationController


  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      flash[:success] = "Se ha subscrito con éxito"
      redirect_to root_path
    else
      render :index
    end
  end

private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end

end
