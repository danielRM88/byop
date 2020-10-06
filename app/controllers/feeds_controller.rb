class FeedsController < ApplicationController
  def index
    render json: Feed.last.to_json(include: :items)
  end
end
