class Admin::PrizesController < ApplicationController

layout 'admin'

  def new
    @prize = Prize.new
  end

  def create
    @prize = Prize.new(prize_params)
    if @prize.save
      flash[:success] = "El premio ha sido creado con éxito."
      redirect_to admin_path
    else
      render :new
    end
  end

  def show
    @prize = Prize.find(params[:id])
  end

  def edit
    @prize = Prize.find(params[:id])
  end

  def update
    @prize = Prize.find(params[:id])
    if @prize.update(prize_params)
      flash[:success] = "El premio fue editado con éxito."
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
    Prize.find(params[:id]).destroy
    flash[:success] = "El premio fue eliminado con éxito."
    redirect_to admin_path
  end

private

  def set_prize
    @prize = Prize.find(params[:id])
  end

  def prize_params
    params.require(:prize).permit(:name, :description, :amount)
  end

end
