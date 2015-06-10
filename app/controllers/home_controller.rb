class HomeController < ActionController::Base

  # include HTTParty

  def index
    @images = []
    InstagramWorker.perform_async("snow")
    for image in response["data"]
      @images << image["images"]["standard_resolution"]["url"]
    end
  end

end