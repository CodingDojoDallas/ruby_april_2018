class RpgController < ApplicationController
  def home
    unless session[:gold]
      session[:gold] = 0
    end
    unless session[:activities]
      session[:activities] = []
    end
    render 'home'
  end

  def farm
    num = Random.rand(10..20)
    session[:gold] += num
    session[:activities].unshift("Earned " + num.to_s + " gold from the farm! ("+Time.now.localtime("-05:00").strftime("%Y/%m/%d %l:%M %p").to_s+")")
    redirect_to '/'
  end

  def cave
    num = Random.rand(5..10)
    session[:gold] += num
    session[:activities].unshift("Earned " + num.to_s + " gold from the cave! ("+Time.now.localtime("-05:00").strftime("%Y/%m/%d %l:%M %p").to_s+")")
    redirect_to '/'
  end

  def casino
    num = Random.rand(-50..50)
    session[:gold] += num
    if num <= 0
      session[:activities].unshift("Lost " + num.abs.to_s + " gold from the casino! ("+Time.now.localtime("-05:00").strftime("%Y/%m/%d %l:%M %p").to_s+")")
    else
      session[:activities].unshift("Earned " + num.to_s + " gold from the casino! ("+Time.now.localtime("-05:00").strftime("%Y/%m/%d %l:%M %p").to_s+")")
    end
    redirect_to '/'
  end

  def house
    num = Random.rand(2..5)
    session[:gold] += num
    session[:activities].unshift("Earned " + num.to_s + " gold from the house! ("+Time.now.localtime("-05:00").strftime("%Y/%m/%d %l:%M %p").to_s+")")
    redirect_to '/'
  end

  def clear
    session[:gold] = 0
    redirect_to '/'
  end

  def actclear
    session[:activities] = nil
    redirect_to '/'
  end

end
