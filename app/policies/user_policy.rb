class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def mark_user_for_deletion?
    @user = user
  end
end
