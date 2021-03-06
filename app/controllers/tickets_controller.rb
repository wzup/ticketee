# coding: utf-8

class TicketsController < ApplicationController

  before_filter(:find_project)
  before_filter(:find_ticket, :only => [:show, :edit, :update, :destroy])

  def new
    # puts params
    @ticket = @project.tickets.build
  end


  def show
  end


  def edit
  end


  def destroy
    @ticket.destroy
    flash[:notice] = "Ticket has been deleted."
    redirect_to @project
  end


  def update
    if @ticket.update_attributes(params[:ticket])
      flash[:notice] = "Ticket has been updated."
      redirect_to [@project, @ticket]
    else
      flash[:alert] = "Ticket has not been updated."
      render :action => "edit"
    end
  end


  def create
    puts "CREATE: #{params}"
    @ticket = @project.tickets.build(params[:ticket])
    if(@ticket.save)
      flash[:notice] = "Ticket has been created."
      redirect_to([@project, @ticket])
    else
      flash[:alert] = "Ticket has not been created."
      render :action => "new"
    end
  end

  private

    def find_project
      @project = Project.find(params[:project_id])
    end

    def find_ticket
      puts "FIND_TICKET: #{params}"
      @ticket = @project.tickets.find(params[:id])
    end
end
