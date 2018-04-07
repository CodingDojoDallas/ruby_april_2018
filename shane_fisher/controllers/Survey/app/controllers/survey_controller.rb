class SurveyController < ApplicationController
  def index
  end

  def new
    unless session[:count]
      session[:count] = 0
    end
    User.create( name: params[:name], location: params[:location], language: params[:language], comment: params[:comment])
    session[:count] = (session[:count] + 1)
    redirect_to '/results'
  end

  def result
    @user = User.last
    render 'results'
  end
end
