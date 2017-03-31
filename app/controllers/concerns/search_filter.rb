module SearchFilter
  private
    def search_filter
      @states = State.all
      @cities = City.all
    end
end
