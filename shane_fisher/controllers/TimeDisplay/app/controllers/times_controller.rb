class TimesController < ApplicationController
  def main
    @time = Time.now()
  end
end
