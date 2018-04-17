class RpgController < ApplicationController
  def index
    render "index"
  end

  def farm
    rand_num = rand(10...20)
    session[:gold] += rand_num
    session[:activities].push("Earned #{rand_num} golds from the farm (#{DateTime.now})")
    redirect_to "/"
  end

  def cave
    rand_num = rand(5...10)
    session[:gold] += rand_num
    session[:activities].push("Earned #{rand_num} golds from the cave (#{DateTime.now})")
    redirect_to "/"
  end

  def house
    rand_num = rand(2...5)
    session[:gold] += rand_num
    session[:activities].push("Earned #{rand_num} golds from the house (#{DateTime.now})")
    redirect_to "/"
  end

  def casino
    rand_num = rand(-50...50)
    session[:gold] += rand_num
    if rand_num > 0
      session[:activities].push("Earned #{rand_num} golds from the casino (#{DateTime.now})")
    else
      session[:activities].push("Ouch...Lost #{rand_num.abs} golds from the casino (#{DateTime.now})")
    end
    redirect_to "/"
  end

  def reset
    session[:gold] = 0
    session[:activities] = []
    redirect_to "/"
  end
end
