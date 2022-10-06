# frozen_string_literal: true

class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show; end

  def new
    @employee = Employee.new
    render :new
  end

  def create
    @employee = Employee.new(params.require(:employee).permit(:name))
    if @employee.save
      flash[:success] = "New employee successfully added!"
      redirect_to root_path
    else
      flash.now[:error] = "Employee creation failed"
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
    render :edit
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(params.require(:employee).permit(:name))
      flash[:success] = "Employee successfully updated"
      redirect_to root_path
    else
      flash.now[:error] = "Employee update failed"
      render :edit
    end
  end

  def destroy; end

  def employee_params
    params.permit(:name)
  end
end
