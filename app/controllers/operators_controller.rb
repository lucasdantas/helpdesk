class OperatorsController < ApplicationController
  def index
    @operators = Operator.all
  end
  
  def new
    @operator = Operator.new
  end
  
  def edit
    @operator = Operator.find(params[:id])
  end
  
  def create
    @operator = Operator.new(params[:operator])
    
    if @operator.save
      redirect_to(operators_path, :notice => 'Operator was successfully created.')
    else
      render :action => "new"
    end
  end
  
  def update
    @operator = Operator.find(params[:id])
    
    if @operator.update_attributes(params[:operator])
      redirect_to(operators_path, :notice => 'Operator was successfully created.')
    else
      render :action => "new"
    end
  end
  
  def destroy
    @operator = Operator.find(params[:id])
    @operator.destroy
    
    redirect_to(operators_url)
  end
end