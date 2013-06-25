# coding: utf-8

class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end


  def show
    @infoMsg = flash[:notice]
    @project = Project.find(params[:id])
    @title = "#{@project.name} - Projects - Ticketee" || "Ticketee"
    # @title = title(@project.name, "Projects")
  end


  def new
    @project = Project.new
  end


  def create
    @project = Project.new(:name => params[:name])
    if(@project.save)
      flash[:notice] = "Project has been created."
      redirect_to @project
    else
      flash[:alert] = "Project has not been created."
      flash[:msg] = @project.errors.messages[:name][0]
      redirect_to(new_project_path)
    end
  end


  protected

    # def title(*parts)
    #   unless(parts.empty?)
    #     content_for(:title) do
    #       (parts << "Ticketee").join(" - ") unless parts.empty?
    #     end
    #   end
    # end
end
