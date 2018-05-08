class FacilitySpacesPolicy < ApplicationPolicy

  def index?
    true
  end
 
  def create?
    user.present?
  end
 
  def update?
    return true if user.present? && facility_space.storage_facility.user == user
  end
 
  def destroy?
    return true if user.present? && facility_space.storage_facility.user == user
  end
 
  private
 
    def facility_space
      record
    end
end