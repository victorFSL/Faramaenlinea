## States ##
Locations = Location.create([
  { city_name: 'Villa Maria'},
  { city_name: 'Hoya de Caimito'},
  { city_name: 'Bella Vista'}
  ])

## DRUGS 3 ###
Meds = Drug.create([
  { name: 'Winasorb', description: 'Analgésico y antipirético.Para disminuir el dolor y la fiebre que se pueden presentar en la gripe, infecciones de garganta, bronquitis, etc., después de la vacunación.Dolor de cabeza, de oído, muscular, óseo y de la dentición.', metric: 'Miligramos', dosage: '500', brand: 'Sanofi', picture_file_name: '261-53web-780x600.jpg' },
  { name: 'Salbutyl XD', description: 'Es un dilatador de las vías respiratorias. Este medicamento descomprime las vías respiratorias y reduce sus síntomas: disnea y respiración entrecortada o sibilante.', metric: 'Microgramos', dosage: '100', brand: 'Sandox', picture_file_name: 'dokteronline-salbutamol-833-3-1420818303.jpg' },
  { name: 'Amoxicut', description: 'La amoxicilina es un antibiótico semisintético derivado de la penicilina. Se trata de una amino penicilina. Actúa contra un amplio espectro de bacterias, tanto Gram positivos como Gram-negativos.', metric: 'Miligramos', dosage: '365', brand: 'Pme', picture_file_name: 'amoxicilina.jpeg'}
  ])

## Active Ingredient
AI = ActiveIngredient.create([
  { name: 'Paracetamol', drug_id: '1', minimum_coverage_insurance: '80.00', under_insurance: true},
  { name: 'Salbutamol', drug_id: '2', minimum_coverage_insurance: '70.00', under_insurance: true},
  { name: 'Amoxicilina', drug_id: '3'}
  ])

##DRUG_STORES###
DrugS = DrugStore.create([
  { name: 'Farmacia Carol', address: 'Calle 27 de Febrero #54', hour_open_regular: '8 AM', hour_close_regular: '6 PM', days_regular: 'Lunes - Viernes', hour_open_other: '9 AM', hour_close_other: '3 PM', days_other: 'Sabado - Domingos', logo_file_name: 'index.png'},
  { name: 'Farmacia 11', address: 'Calle Israel #14', hour_open_regular: '8 AM', hour_close_regular: '8 PM', days_regular: 'Lunes - Jueves', hour_open_other: '7 AM', hour_close_other: '8 PM', days_other: 'Viernes - Domingos', logo_file_name: '__35.JPG'},
  { name: 'Farmacia Robles', address: 'Calle 27 de Febrero #54', hour_open_regular: '8 AM', hour_close_regular: '6 PM', days_regular: 'Lunes - Viernes',hour_open_other: '9 AM', hour_close_other: '3 PM', days_other: 'Sabado - Domingos', logo_file_name: 'losrobles_g.jpg'}
  ])


##Prices###
Prices = Price.create([
  { drug_store_id: '1', drug_id: '1', price: '200', location_id: '1' },
  { drug_store_id: '1', drug_id: '2', price: '400', location_id: '2' },
  { drug_store_id: '1', drug_id: '3', price: '500', location_id: '3' },
  { drug_store_id: '2', drug_id: '1', price: '700', location_id: '1' },
  { drug_store_id: '2', drug_id: '2', price: '200', location_id: '2' },
  { drug_store_id: '2', drug_id: '3', price: '600', location_id: '3' },
  { drug_store_id: '3', drug_id: '1', price: '100', location_id: '1' },
  { drug_store_id: '1', drug_id: '1', price: '200', location_id: '2' },
  { drug_store_id: '2', drug_id: '1', price: '700', location_id: '2' },
  { drug_store_id: '3', drug_id: '1', price: '100', location_id: '2' },
  { drug_store_id: '1', drug_id: '1', price: '200', location_id: '3' },
  { drug_store_id: '2', drug_id: '1', price: '700', location_id: '3' },
  { drug_store_id: '3', drug_id: '1', price: '100', location_id: '3' },
  { drug_store_id: '3', drug_id: '2', price: '10', location_id: '2' }
  ])

## Payment Methods Efectivo, Tarjeta o Seguro
PaymentMethods = PaymentMethod.create([
  { payment_type: 'tarjeta', drug_store_id: '1'},
  { payment_type: 'efectivo', drug_store_id: '2', accepts_insurance: true, insurance_name: 'Palic'},
  { payment_type: 'tarjeta', drug_store_id: '2', accepts_insurance: true, insurance_name: 'Humano'},
  { payment_type: 'efectivo', drug_store_id: '3', accepts_insurance: true, insurance_name: 'Monumental'}
  ])
