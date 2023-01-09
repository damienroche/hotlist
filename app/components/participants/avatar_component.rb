# frozen_string_literal: true

class Participants::AvatarComponent < ViewComponent::Base
  def initialize(name:, color:)
    @name = name
    @color = color
    @legend = name&.chr
  end
end
