class ReportsController < ApplicationController

  def show
  	@lesson_name = params[:lesson_name]
  	@exam_number = params[:exam_number]
  	@scores = Score.where(:lesson_name => @lesson_name, :exam_number => @exam_number).order(:score).reverse
  	@passers_count = Score.where("lesson_name = ? AND  exam_number = ? AND score >= 50", @lesson_name, @exam_number ).count
  	@stayers_count = Score.where("lesson_name = ? AND  exam_number = ? AND score < 50", @lesson_name, @exam_number ).count
  end

  def index
  end

end
