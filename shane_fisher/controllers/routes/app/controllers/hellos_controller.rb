class HellosController < ApplicationController
  def home
    
  end

  def hello
    render text: 'Hello CodingDojo!'
  end

  def say
    render text: 'Saying Hello!'
  end

  def say_name
    id = params[:id].capitalize.to_s
    print id
    render text: ('Saying Hello to ' + id)
    
  end

  def times
    if session[:times]
      session[:times] += 1
    else
      session[:times] = 1
    end
    render text: ("You have visited this page " + session[:times].to_s + " times.")
  end

  def restart
    session.clear
    render text: 'Session is cleared.'
  end
end
