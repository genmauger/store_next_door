module StorageFacilitiesHelper

  def all_storage_facilities_map(storage_facilities, zoom=15)
    markers_string = ""

    storage_facilities.each do |storage_facility|
      markers_string += "#{storage_facility.latitude},#{storage_facility.longitude}|"  
    end
    
    image_tag "http://maps.googleapis.com/maps/api/staticmap?&markers=#{markers_string}&zoom=#{zoom}&size=640x400&key=AIzaSyAY6SDoNkrh8eJwG-lZWKK1d2RiNvXbPmg"
  end

end
