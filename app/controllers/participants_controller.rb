class ParticipantsController < ApplicationController
  before_action :set_list

  def create
    participant = @list.participants.create!(set_params)
    participant.color = "%06x" % (rand * 0xffffff)
    participant.save
    
    redirect_to @list
  end

  private
    def set_list
      @list = List.find(params[:list_id])
    end

    def set_params
      params.required(:participant).permit(:name)
    end
end
