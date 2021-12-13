class StudentsController < ApplicationController

  def index
    if params.has_key?(:name)
      students = Student.where(first_name: params[:name].capitalize).or(Student.where(last_name: params[:name].capitalize))
      render json: students
    else
      students = Student.all
      render json: students
    end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
