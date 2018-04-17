class HelloController < ApplicationController
  def home
    render text: "Hello CodingDojo!"
  end

  def say
    render text: "Saying Hello!"
  end

  def joe
    render text: "Saying Hello Joe!"
  end

  def michael
    redirect_to "/say/hello/joe"
  end

  def times
    session[:times] += 1
    p session[:times]
    render text: "You visited this url #{session[:times]} time(s)"
  end

  def restart
    session[:times] = 0
    p session[:times]
    render text: "Destroyed the session!"
  end
end
