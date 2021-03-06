class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find_by(id: params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    Course.create(course_params)
    redirect_to courses_path
  end

  def edit
    @course = Course.find_by(id: params[:id])
  end

  def update
    @course = Course.find_by(id: params[:id])
    @course.update(course_params)
    redirect_to @course
  end

  def delete
    @course = Course.find_by(id: params[:id])
    @course.delete
    redirect_to courses_path
  end

  private

  def course_params
    params.require(:course).permit(:name, :course_id, :department)
  end
end
