class Api::ProjectsController < ApplicationController
  before_action :require_current_user, except: :learn

  def create
    @project = current_user.projects.new(project_params)
    if project_params[:end_date]
      @project.end_date = DateTime.current + project_params[:end_date].to_i.days
    end
    if @project.save
      render json: @project
    else
      render json: @project.errors.full_messages, status: :unprocessable_entity
    end
  end

  def edit
    @project = Project.find(params[:id])
    render :edit
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      render :edit
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def show
    @project = Project.find(params[:id])
    render :show
  end

  def destroy
    Project.find(params[:id]).try(:destroy)
    render json: {}
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
end