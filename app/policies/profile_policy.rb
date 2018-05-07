class ProfilePolicy < ApplicationPolicy
  def index?
    true
  end
 
  def create?
    user.present?
  end
 
  def update?
    return true if user.present? && user == user.profile
  end
 
  def destroy?
    return true if user.present? && user == user.profile
  end
 
  private
 
    def article
      record
    end
end