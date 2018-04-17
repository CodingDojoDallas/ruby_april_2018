class SurveysController < ApplicationController
  def new
    render "new"
  end

  def submit
    session[:results] = survey_results
    flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:count]} times now"
    redirect_to "/result"
  end

  def result
    session[:count] += 1
    p session[:count]
    render "result"
  end

  private
    def survey_results
      params.require(:survey).permit(:name, :location, :fav, :comment)
    end
end
