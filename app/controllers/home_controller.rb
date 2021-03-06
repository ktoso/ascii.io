class HomeController < ApplicationController
  def show
    offset = (Asciicast.featured.count * rand).to_i
    asciicast = Asciicast.featured.offset(offset).first ||
                Asciicast.order("created_at DESC").first
    @asciicast = AsciicastDecorator.new(asciicast)
  end
end
