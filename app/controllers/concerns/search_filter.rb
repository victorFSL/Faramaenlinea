module SearchFilter
  private
    def search_filter
      @locations = Location.all
    end

    def set_location
      @location = Location.find(params[:location_id])
    end
end
