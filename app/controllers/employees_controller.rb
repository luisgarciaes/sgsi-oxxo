# frozen_string_literal: true

class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show; end

  def new; end

  def create; end

  def edit
    @employee = Employee.find(params[:id])
    render :edit
  end

  def update; end

  def destroy; end

  def employee_params
    params.permit(:name)
  end
end
