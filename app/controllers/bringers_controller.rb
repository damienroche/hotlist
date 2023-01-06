class BringersController < ApplicationController
  before_action :set_list
  before_action :set_item

  def create
    @item.participants << Participant.find(params[:id])
    redirect_to @list
  end

  def destroy
    @item.participants.delete(Participant.find(params[:id]))
    redirect_to @list
  end

  private
    def set_item
      @item = Item.find(params[:item_id])
    end

    def set_list
      @list = List.find(params[:list_id])
    end
end
