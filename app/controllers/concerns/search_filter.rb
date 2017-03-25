module SearchFilter
  private
    def search_filter
      @states = State.all
      @cities = City.all
      @search = Drug.search(params[:q])
      @drugs = @search.result
    end
end
