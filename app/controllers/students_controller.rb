class StudentsController < ApplicationController
  before_action :set_student, only: :show
  before_action :update_student, only: :activate

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @students = Student.all
    byebug
    redirect_to "/students/#{@student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def update_student
      @student = Student.find(params[:id])
      @student.active ? @student.active = false : @student.active = true
      @student.save
    end
end
