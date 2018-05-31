class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
  end

  def activate_student
  end

  def activate
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
