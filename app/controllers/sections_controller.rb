class SectionsController < ApplicationController
  before_action :fetch_standard

  def index
    @sections = @standard.sections.all
  end

  def new
    @section = @standard.sections.new
  end

  def create
    @section = @standard.sections.new(section_params)
    if @section.save
      flash[:success] = "Successfully added a section."
      redirect_to standard_sections_path
    else
      flash[:error] = "Oops! Looks like you forgot to add a section name."
      render :new
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    @section.update_attributes(section_params)
    redirect_to standard_sections_path
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy!
    redirect_to standard_sections_path
  end

private
  def section_params
    params.require(:section).permit(:name)
  end

  def fetch_standard
    @standard = Standard.find(params[:standard_id])
  end
end
