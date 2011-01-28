class CommentsController < ApplicationController
  def new
    @comment = Comment.new params[:id]
  end

  def edit
    @comment = Comment.find(params[:id])
  end
  
  def create
    @comment = Comment.new(params[:comment])
    @comment.operator_id = session[:user_id]

    if @comment.save
      respond_to do |format|
          format.json{ render :json => @comment.ticket_id.to_json }
      end
      #redirect_to(ticket_path(@comment.ticket_id), :notice => 'Comment was successfully created.')
    else
      render :action => "new"
    end
  end
  
  def update
    @comment = Comment.find(params[:id])
    
    if @comment.update_attributes(params[:comment])
      redirect_to(ticket_path(@comment.ticket_id), :notice => 'Comment was successfully updated.')
    else
      render :action => "new"
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    ticket_id = @comment.ticket_id
    @comment.destroy
    
    redirect_to(ticket_path(ticket_id), :notice => 'Comment was successfully removed.')
  end
end
