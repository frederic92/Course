class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: [:show]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project) 
    end
  end

  def show

  end



  private

  def project_params
    params.require(:project).permit(:name, :headline, :link, :github_repo, :description)
                            .merge( user_id: current_user.id)
  end

  def set_project
    @project = Project.find(params[:id])
  end

end
