class AllocationsController < ApplicationController

  def add_project
	@allocation = Allocation.new(worker_id: params[:worker_id], project_id: params[:project_id] )
    
    if @allocation.save
      redirect_to worker_path(params[:worker_id]), notice: 'Se ha asignado el proyecto'
    else
      redirect_to worker_path(params[:worker_id]), alert: 'No se ha podido asignar'
    end
  end
  	

end
