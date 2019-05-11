class PracticalExamsController < ApplicationController
  def show
  end

  def new
    @practical_exam = PracticalExam.new(number: params[:exam_number], student_id: params[:student_id])
    @practical_exam.populate_skills
    if params[:exam_number] == '1'
      render '1_medical'
    elsif params[:exam_number] == '2'
      render '2_trauma'
    elsif params[:exam_number] == '3'
      render '3_arrest'
    elsif params[:exam_number] == '4'
      render '4_apneic'
    elsif params[:exam_number] == '5A'
      render '5a_airway'
    elsif params[:exam_number] == '5B'
      render '5b_oxygen'
    elsif params[:exam_number] == '5C'
      render '5c_bleeding'
    elsif params[:exam_number] == '6A'
      render '6a_longbone'
    elsif params[:exam_number] == '6B'
      render '6b_joint'
    elsif params[:exam_number] == '6C'
      render '6c_traction'
    end
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def practical_exams_params
  end
end
