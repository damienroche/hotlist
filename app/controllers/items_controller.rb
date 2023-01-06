class ItemsController < ApplicationController
  before_action :set_list

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

  private
    def set_list
      @list = List.find(params[:list_id])
    end
end
