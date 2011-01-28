class SessionsController < ApplicationController
  skip_before_filter :authenticated?, :only => [:new, :create]
  
  def new
  end

  def create
    @operator = Operator.find(:first, :conditions => ['email = ? AND senha = ?', params[:email], params[:senha]])
    if @operator
      session[:user_id] = @operator.id
      redirect_to(tickets_path, :notice => 'Login realizado com sucesso.')
    else
      session[:user_id] = nil
      flash[:notice] = 'E-mail ou Senha inválido.'
      render :action => "new"
    end
    
  end

  def destroy
    session[:user_id] = nil;
    redirect_to(new_session_path, :notice => 'Você saiu do sistema.')
  end

end
