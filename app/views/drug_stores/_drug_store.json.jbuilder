json.extract! drug_store, :id, :name, :address, :hours, :payment_options, :logo, :delivery_radius, :created_at, :updated_at
json.url drug_store_url(drug_store, format: :json)