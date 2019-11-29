class ApplicationController < ActionController::Base
  layout :layout_by_resource

  protected

  def layout_by_resource
  	if devise_controller? && resource_ma,e == :admin
  		"backoffice_devise"
  	else 
  		"application"
  	end
  end	
end
