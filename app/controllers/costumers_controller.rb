# frozen_string_literal: true

class CostumersController < ApplicationController
  before_action :authenticate_member!
  def index
    @costumers = Costumer.all
  end

  def show; end

  def new
    @costumer = Costumer.new
    render :new
  end

  def create
    @costumer = Costumer.new(params.require(:costumer).permit(:name))
    if @costumer.save
      flash[:success] = "New costumer successfully added!"
      redirect_to root_path
    else
      flash.now[:error] = "Costumer creation failed"
      render :new
    end
  end

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

  def destroy
    @costumer = Costumer.find(params[:id])
    @costumer.destroy
    flash[:success] = "The costumer was successfully removed."
    redirect_to root_path
  end

  def costumer_params
    params.permit(:name)
  end
end
