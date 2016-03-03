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
      redirect_to standards_path
    else
      render new
    end
  end

  def edit
    @standard = Standard.find(params[:id])
  end

  def update
    @standard = Standard.find(params[:id])

  end

  def destroy

  end

private
def standard_params
  params.require(:standard).permit(:name)
end
end
