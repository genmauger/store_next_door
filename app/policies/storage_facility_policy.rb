class StorageFacilityPolicy < ApplicationPolicy

  def index?
    true
  end
 
  def create?
    user.present?
  end
 
  def update?
    return true if user.present? && user.storage_facility.include?(storage_facility)
  end
 
  def destroy?
    return true if user.present? && user.storage_facility.include?(storage_facility)
  end
 
  private
 
    def storage_facility
      record
    end
end