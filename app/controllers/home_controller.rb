class HomeController < ActionController::Base

  # include HTTParty

  def index
    # InstagramImage.delete_all
    InstagramWorker.perform_async("trout")
    @images = InstagramImage.all
  end

end