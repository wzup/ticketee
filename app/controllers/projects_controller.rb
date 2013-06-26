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
    puts "IN CREATE. params = #{params}"
    # @project = Project.new(:name => params[:name])
    @project = Project.new(:name => params[:project][:name])
    if(@project.save)
      flash[:notice] = "Project has been created."
      redirect_to @project
    else
      flash[:alert] = "Project has not been created."
      flash[:msg] = @project.errors.messages[:name][0]
      redirect_to(new_project_path)
    end
  end


  def edit
    puts "IN EDIT. params = #{params}"
    @project = Project.find(params[:id])
  end

  def update
    puts "IN EDIT. params = #{params}"
    @project = Project.find(params[:id])
    if(@project.update_attributes(params[:project]))
      flash[:notice] = "Project has been updated."
      redirect_to @project
    else
      flash[:alert] = "Project has not been updated."
      flash[:msg] = @project.errors.messages[:name][0]
      redirect_to(:action => :edit)
    end
  end


  def destroy
    puts "IN DELETE. params = #{params}"
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Project has been deleted."
    redirect_to(projects_path)
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
