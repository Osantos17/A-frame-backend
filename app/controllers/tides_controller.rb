require "http"

class TidesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    response = HTTP.get("http://api.worldweatheronline.com/premium/v1/marine.ashx?key=f1f00d06db194dd38e4190248232509&q=37.491711,-122.479787&format=json&tide=yes&tp=string")

    render json: response.parse(:json)
  end
end
