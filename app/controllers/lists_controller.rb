class ListsController < ApplicationController
  before_action :get_current_participant_id
  before_action :is_participant_logged?
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

  def is_participant_logged?
    return session[params[:id]].present?
  end

  def get_current_participant_id
    @current_participant_id = session[params[:id]]&.to_i
  end

  def update_current_participant
    session[params[:list_id]] = params[:participant_id]
    @current_participant_id = params[:participant_id].to_i
    redirect_to list_path(List.find(params[:list_id]))
  end

  private
  def list_params
    params.require(:list).permit(:title)
  end
end
