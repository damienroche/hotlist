# frozen_string_literal: true

class Participants::TagComponent < ViewComponent::Base
  def initialize(name:, color:, participant_id:, current_participant_id:)
    @name = name
    @color = color
    @participant_id = participant_id
    @current_participant_id = current_participant_id
  end

  def is_current_participant?
    return @participant_id == @current_participant_id
  end
end
