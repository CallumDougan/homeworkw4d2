class HomeController < ApplicationController
  def services 
  end

  def welcome
    render 'menu'
  end

  def search
    case params['option'].downcase
    when 'taps' then redirect_to('/taps')
    when 'showers' then redirect_to('/showers')
    when 'baths' then redirect_to('/baths')
    else render 'menu'
    end
  end

end