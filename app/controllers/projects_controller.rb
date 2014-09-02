class ProjectsController < ApplicationController
  before_action :require_current_user, except: :new
  before_action :must_be_current_user, only: [:edit, :update, :destroy]

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    if project_params[:end_date]
      @project.end_date = DateTime.current + project_params[:end_date].to_i.days
    end
    if @project.save
      render :edit
    else
      render :start
    end
  end

  def edit
    @project = Project.find(params[:id])
    render :edit
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to edit_project_url(@project)
  end

  def show
    @project = Project.find(params[:id])
    render :show
  end

  def destroy
    Project.find(params[:id]).destroy
    redirect_to root_url
  end

  def learn
    render :learn
  end

  def start
    render :start
  end

  private
  def project_params
    params.require(:project).permit(:title, :photo, :video, :category_id, :subcategory_id,
        :blurb, :location_id, :end_date, :goal, :description, :challenges)
  end

  def must_be_current_user
    redirect_to root_url unless current_user.project_ids.include?(params[:id].to_i)
  end
end








