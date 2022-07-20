class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    selected_student = Student.find_by(id: params[:id])
    render json: selected_student
  end

end
