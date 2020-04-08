class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit]
  
  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if @student.valid?
      redirect_to @student
    else
      render 'new'
    end
  end

  def edit
    find_student
  end

  def show
    find_student
  end

  def index
    @students = Student.all
  end

  def student_params
    params.require(:student).permit(:name, :birthday, :hometown)
  end

  def find_student
    @student = Student.find(params[:id])
  end
end
