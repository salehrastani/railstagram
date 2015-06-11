class InstagramWorker
  include Sidekiq::Worker
  include HTTParty

  def perform(query)
    response = HTTParty.get("https://api.instagram.com/v1/tags/#{query}/media/recent?access_token=578084450.1fb234f.c3375e7a981b4199a4342f481c7c395d")
    response["data"].each do |data|
      InstagramImage.create(url: "#{data["images"]["standard_resolution"]["url"]}")
    end

  end

end
