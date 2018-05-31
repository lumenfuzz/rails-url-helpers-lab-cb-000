class StudentsController < ApplicationController
  before_action :set_student, only: :show
  before_action :set_student, only: :activate_student

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
