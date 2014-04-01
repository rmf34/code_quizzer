class ExamsController < ApplicationController

  def grade_exam
    @exam = Exam.find(params[:id])
    authorize! :update, @exam
    @exam.grade
    respond_to do |format|
      format.json { render :json => @exam }
    end
  end

  def cancel_exam
    @exam = Exam.where(:quiz_id => params[:quiz_id], :user_id => current_user.id, :status => nil).first
    authorize! :update, @exam
    @exam.update_attribute(:status, "cancelled")
    respond_to do |format|
      format.json { render :json => @exam }
    end
  end

  def index
    @completed_exams = Exam.where(:status => "graded").limit(50).order("id desc")
    @exams_in_progress = Exam.where("status IS NULL").limit(50).order("id desc")
  end

  def user_exams
    @completed_exams = Exam.where(:user_id => current_user.id, :status => "graded").limit(50).order("id desc")
    @exams_in_progress = Exam.where(:user_id => current_user.id).where("status IS NULL").limit(50).order("id desc")
  end

  def graded_count
    respond_to do |format|
      if current_user
        quiz_id = params[:quiz_id]
        exams = Exam.where(:user_id => current_user.id, :quiz_id => quiz_id)
        result = exams.inject({"graded" => 0, "cancelled" => 0, "not_graded" => 0}) do |memo, exam|
          if exam.status == "graded"
            memo["graded"] += 1
          elsif exam.status == "cancelled"
            memo["cancelled"] += 1
          else
            memo["not_graded"] += 1
          end
          memo
        end
        format.json { render :json => result }
      else
        format.json { head :no_content }
      end
    end
  end

end
