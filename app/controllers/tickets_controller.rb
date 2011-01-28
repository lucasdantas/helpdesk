class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end
  
  def show
    @ticket = Ticket.find(params[:id])
  end
  
  def new
    @ticket = Ticket.new
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end
  
  def create
    @ticket = Ticket.new(params[:ticket])
    @ticket.operator_ini = session[:user_id]
    
    if @ticket.save
      redirect_to(tickets_path, :notice => 'Ticket was successfully created.')
    else
      render :action => "new"
    end
  end
  
  def update
    @ticket = Ticket.find(params[:id])
    
    if @ticket.update_attributes(params[:ticket])
      redirect_to(tickets_path, :notice => 'Ticket was successfully created.')
    else
      render :action => "new"
    end
  end
  
  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    
    redirect_to(tickets_url)
  end

end
