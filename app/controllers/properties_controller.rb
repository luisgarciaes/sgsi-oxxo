class PropertiesController < ApplicationController
  before_action :authenticate_user!
  def index
    @properties = Property.all
  end

  def show; end

  def new
    @property = Property.new
    render :new
  end

  def create
    @property = Property.new(params.require(:property).permit(:name))
    if @property.save
      flash[:success] = "New property successfully added!"
      redirect_to root_path
    else
      flash.now[:error] = "Property creation failed"
      render :new
    end
  end
  def edit
    @property = Property.find(params[:id])
    render :edit
  end

  def update
    @property = Property.find(params[:id])
    if @property.update(params.require(:property).permit(:name))
      flash[:success] = "Property successfully updated"
      redirect_to root_path
    else
      flash.now[:error] = "Property update failed"
      render :edit
    end
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy
    flash[:success] = "The property was successfully removed."
    redirect_to root_path
  end
end
