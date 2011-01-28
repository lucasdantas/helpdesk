class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end
  
  def new
    @customer = Customer.new
  end
  
  def edit
    @customer = Customer.find(params[:id])
  end
  
  def create
    @customer = Customer.new(params[:customer])
    
    if @customer.save
      redirect_to(customers_path, :notice => 'Customer was successfully created.')
    else
      render :action => "new"
    end
  end
  
  def update
    @customer = Customer.find(params[:id])
    
    if @customer.update_attributes(params[:customer])
      redirect_to(customers_path, :notice => 'Customer was successfully created.')
    else
      render :action => "new"
    end
  end
  
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    
    redirect_to(customers_url)
  end
end
