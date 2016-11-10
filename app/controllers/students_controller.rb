class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def show
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.all
  end

  def student_params
    params.require(:student).permit(:name, :birthday, :hometown)
  end
end

#         Prefix Verb   URI Pattern                    Controller#Action
#     classrooms GET    /classrooms(.:format)          classrooms#index
#                POST   /classrooms(.:format)          classrooms#create
#  new_classroom GET    /classrooms/new(.:format)      classrooms#new
# edit_classroom GET    /classrooms/:id/edit(.:format) classrooms#edit
#      classroom GET    /classrooms/:id(.:format)      classrooms#show
#                PATCH  /classrooms/:id(.:format)      classrooms#update
#                PUT    /classrooms/:id(.:format)      classrooms#update
#                DELETE /classrooms/:id(.:format)      classrooms#destroy
#       students GET    /students(.:format)            students#index
#                POST   /students(.:format)            students#create
#    new_student GET    /students/new(.:format)        students#new
#   edit_student GET    /students/:id/edit(.:format)   students#edit
#        student GET    /students/:id(.:format)        students#show
#                PATCH  /students/:id(.:format)        students#update
#                PUT    /students/:id(.:format)        students#update
#                DELETE /students/:id(.:format)        students#destroy

