class ItemsController < ApplicationController
  before_action :set_list
  # before_action :set_item, only: [:add_participant, :destroy]

  def create
    @list.items.create!(params.required(:item).permit(:title))
    redirect_to @list
  end

  def index
    redirect_to list_path(@list)
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy

    redirect_to @list
  end

  def add_participant
    ItemParticipant.create(item_id: params[:item_id], participant_id: params[:participant_id])
    redirect_to @list
  end

  private
    def set_list
      @list = List.find(params[:list_id])
    end
end
