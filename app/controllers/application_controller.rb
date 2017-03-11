class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

private
def set_drug_store
  @drug_store = DrugStore.find(params[:id])
end
end
