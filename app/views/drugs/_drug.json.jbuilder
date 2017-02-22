json.extract! drug, :id, :name, :active_ingredient, :picture, :doctor_name, :description, :metric, :dosage, :created_at, :updated_at
json.url drug_url(drug, format: :json)