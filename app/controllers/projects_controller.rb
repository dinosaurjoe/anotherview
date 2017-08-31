class ProjectsController < ApplicationController
before_action :find_job, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(jobs_params)
    if @project.save
        redirect_to @project
    else
        render "New"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def upvote
  @project = Project.find(params[:id])
  @project.votes.create
  redirect_to(projects_path)
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
