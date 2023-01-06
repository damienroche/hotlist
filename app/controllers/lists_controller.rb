class ListsController < ApplicationController
  before_action :set_list, :only => [:show]

  def new
    @list = List.new
  end
  
  def show
  end

  def create
    @list = List.create(list_params)
    redirect_to list_path(@list)
  end
  
  def set_list
    @list = List.find(params[:id])
  end

  def index
    redirect_to root_path
  end

  private
  def list_params
    params.require(:list).permit(:title)
  end
end
