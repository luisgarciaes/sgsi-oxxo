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

  def update; end

  def destroy; end

  def costumer_params
    params.permit(:name)
  end
end
