class StandardsController < ApplicationController
  def index
    @standard = Standard.all
  end

  def new
    @standard = Standard.new
  end

  def create
    @standard = Standard.new(standard_params)
    if @standard.save
      flash[:success] = "Successfully added a standard."
      redirect_to standards_path
    else
      flash[:error] = "Oops! Looks like you forgot to add a standard level."
      render :new
    end
  end

  def edit
    @standard = Standard.find(params[:id])
  end

  def update
    @standard = Standard.find(params[:id])
    @standard.update_attributes(standard_params)
    redirect_to standards_path
  end

  def destroy
    @standard = Standard.find(params[:id])
    @standard.destroy!
    redirect_to standards_path
  end

private
def standard_params
  params.require(:standard).permit(:name)
end
end
