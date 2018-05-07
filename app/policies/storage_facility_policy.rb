class StorageFacilityPolicy < ApplicationPolicy
  def index?
    true
  end
 
  def create?
    user.present?
  end
 
  def update?
    return true if user.present? && user == storage_facility.current_user
  end
 
  def destroy?
    return true if user.present? && user == storage_facility.current_user
  end
 
  private
 
    def article
      record
    end
end