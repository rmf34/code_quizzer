class Exam < ActiveRecord::Base
  # rails 4, must get rid of attr_accessible
  attr_accessible :quiz_id, :status, :user_id, :correct_answers, :incorrect_answers, :unanswered_questions

  has_many :answers, :dependent => :destroy
  belongs_to :quiz
  belongs_to :user

  def grade
    attributes = self.quiz.questions.inject({:unanswered_questions => 0, :correct_answers => 0, :incorrect_answers => 0}) do |memo, question|
      answer = Answer.where(:exam_id => self.id, :question_id => question.id).first
      if answer.blank?
        memo[:unanswered_questions] += 1
      elsif answer.status == 'correct'
        memo[:correct_answers] += 1
      elsif answer.status == 'incorrect'
        memo[:incorrect_answers] += 1
      end
      memo
    end
    self.update_attributes(attributes.merge({:status => 'graded'}))
  end

  def total_questions
    correct_answers + incorrect_answers + unanswered_questions
  end

  def percent_correct
    correct_answers.to_f / total_questions
  end

end
