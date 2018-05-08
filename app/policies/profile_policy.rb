class ProfilePolicy < ApplicationPolicy
  def index?
    false
  end
 
  def create?
    true if user.present? && user.profile.nil?
  end
 
  def update?
    true if user.present? && profile == user.profile
  end
 
  def destroy?
    true if user.present? && profile == user.profile
  end
 
  private

    def profile
      record # changes the namespace
    end
end