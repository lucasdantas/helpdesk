class InstitutionsController < ApplicationController
  def index
    @institutions = Institution.all
  end
  
  def new
    @institution = Institution.new
  end
  
  def edit
    @institution = Institution.find(params[:id])
  end
  
  def create
    @institution = Institution.new(params[:institution])
    
    if @institution.save
      redirect_to(institutions_path, :notice => 'Institution was successfully created.')
    else
      render :action => "new"
    end
  end
  
  def update
    @institution = Institution.find(params[:id])
    
    if @institution.update_attributes(params[:institution])
      redirect_to(institutions_path, :notice => 'Institution was successfully created.')
    else
      render :action => "new"
    end
  end
  
  def destroy
    @institution = Institution.find(params[:id])
    @institution.destroy
    
    redirect_to(institutions_url)
  end
end
