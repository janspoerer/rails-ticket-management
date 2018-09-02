class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(ticket: ticket)
    end
  end

  def create?
    true
  end

  def new?
    create?
  end
end
