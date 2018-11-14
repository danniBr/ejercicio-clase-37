class PagesController < ApplicationController
  def index
  	@projects = Project.all
  	@workers = Worker.all

  end
end
