class FeedsController < ApplicationController
  def index
    render json: Feed.last.to_json(include: :items)
  end

  def import
    link = params[:link]
    source = params[:source]
    error = false

    begin
      FeedImporter.new(link, source).call
    rescue StandardError => ex
      error = true
      Rails.logger.info(ex.message)
    end

    if error
      render json: {message: 'feed could not be imported'}, status: 500
    else
      render json: {message: 'feed imported successfully'}, status: :ok
    end
  end
end
