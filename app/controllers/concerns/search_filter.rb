module SearchFilter
  private
    def search_filter
      @locations = Location.all.order('city_name ASC')
    end

    def set_location
      @location = Location.find(params[:location_id])
    end
end
