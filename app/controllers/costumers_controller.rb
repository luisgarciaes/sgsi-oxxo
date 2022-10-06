# frozen_string_literal: true

class CostumersController < ApplicationController
  def index
    @costumers = Costumer.all
  end

  def show; end

  def new; end

  def create; end

  def edit
    @costumer = Costumer.find(params[:id])
    render :edit
  end

  def update
    @costumer = Costumer.find(params[:id])
    if @costumer.update(params.require(:costumer).permit(:name))
      flash[:success] = "Costumer successfully updated"
      redirect_to root_path
    else
      flash.now[:error] = "Costumer update failed"
      render :edit
    end
  end

  def destroy; end

  def costumer_params
    params.permit(:name)
  end
end
