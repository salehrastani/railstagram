class HomeController < ActionController::Base

  # include HTTParty

  def index
    @images = []
    response = HTTParty.get('https://api.instagram.com/v1/tags/snow/media/recent?access_token=578084450.1fb234f.c3375e7a981b4199a4342f481c7c395d')
    for image in response["data"]
      @images << image["images"]["standard_resolution"]["url"]
    end
  end

end