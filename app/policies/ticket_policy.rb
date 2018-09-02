class TicketPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user: user)
      end
    end
  end

  def create?
    true
  end

  def new?
    create?
  end

  def show?
    current_user = @record.user
  end
end
