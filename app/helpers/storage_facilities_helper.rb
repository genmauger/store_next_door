module StorageFacilitiesHelper

  def all_storage_facilities_map(storage_facilities, zoom=14)
    markers_string = ""

    storage_facilities.each do |storage_facility|
      markers_string += "#{storage_facility.latitude},#{storage_facility.longitude}|"  
    end
    
    image_tag "http://maps.googleapis.com/maps/api/staticmap?&markers=#{markers_string}&zoom=#{zoom}&size=640x400&key=#{ENV.fetch('GOOGLE_STATIC_MAPS_KEY')}"
  end

end
