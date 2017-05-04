module SearchFilter
  private
    def search_filter
      @states = State.all
      @cities = City.all
    end
    
    def set_state_city
      @state = State.find(params[:state_id])
      @city = City.find(params[:city_id])
    end
end
