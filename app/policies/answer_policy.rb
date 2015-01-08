class AnswerPolicy < ApplicationPolicy
  def index?
    @user.role == "admin"
  end
end