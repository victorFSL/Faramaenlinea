## DRUGS 3 ###
Meds = Drug.create([
  { name: 'Winasorb', description: 'Analgésico y antipirético.Para disminuir el dolor y la fiebre que se pueden presentar en la gripe, infecciones de garganta, bronquitis, etc., después de la vacunación.Dolor de cabeza, de oído, muscular, óseo y de la dentición.', metric: 'Miligramos', dosage: '500', brand: 'Sanofi', picture_file_name: "261-53web-780x600.jpg" },
  { name: 'Salbutamol', description: 'Es un dilatador de las vías respiratorias. Este medicamento descomprime las vías respiratorias y reduce sus síntomas: disnea y respiración entrecortada o sibilante.', metric: 'Microgramos', dosage: '100', brand: 'Sandox', picture_file_name: "dokteronline-salbutamol-833-3-1420818303.jpg" },
  { name: 'Amoxicilina', description: 'La amoxicilina es un antibiótico semisintético derivado de la penicilina. Se trata de una amino penicilina. Actúa contra un amplio espectro de bacterias, tanto Gram positivos como Gram-negativos.', metric: 'Miligramos', dosage: '365', brand: 'Pme', picture_file_name: "amoxicilina.jpeg"}
  ])
## Coverage if insurance covers
Coverages = Coverage.create([
  { minimum_coverage_insurance: '80.00'},
  { minimum_coverage_insurance: '70.00' }
  ])
## Active Ingredient
AI = ActiveIngredient.create([
  { name: 'Paracetamol', coverage_id: '1', drug_id: '1'},
  { name: 'Salbutamol', coverage_id: '2', drug_id: '2'},
  { name: 'Amoxicilina', drug_id: '3'}
  ])


##DRUG_STORES###
DrugS = DrugStore.create([
  { name: 'Farmacia Carol', address: 'Calle 27 de Febrero #54', hour_open_regular: '8 AM', hour_close_regular: '6 PM', days_regular: 'Lunes - Viernes', hour_open_other: '9 AM', hour_close_other: '3 PM', days_other: 'Sabado - Domingos', payment_options: 'Efectivo', logo_file_name: "index.png"},
  { name: 'Farmacia 11', address: 'Calle Israel #14', hour_open_regular: '8 AM', hour_close_regular: '8 PM', days_regular: 'Lunes - Jueves', hour_open_other: '7 AM', hour_close_other: '8 PM', days_other: 'Viernes - Domingos', payment_options: 'Efectivo y Tarjeta', logo_file_name: "__35.JPG"},
  { name: 'Farmacia Carol', address: 'Calle 27 de Febrero #54', hour_open_regular: '8 AM', hour_close_regular: '6 PM', days_regular: 'Lunes - Viernes',hour_open_other: '9 AM', hour_close_other: '3 PM', days_other: 'Sabado - Domingos', payment_options: 'Efectivo', logo_file_name: "losrobles_g.jpg"}
  ])

##Prices###
Prices = Price.create([
  { drug_store_id: '1', drug_id: '1', price: '200' },
  { drug_store_id: '1', drug_id: '2', price: '400' },
  { drug_store_id: '1', drug_id: '3', price: '500' },
  { drug_store_id: '2', drug_id: '1', price: '700' },
  { drug_store_id: '2', drug_id: '2', price: '200' },
  { drug_store_id: '2', drug_id: '3', price: '600' },
  { drug_store_id: '3', drug_id: '1', price: '100' },
  { drug_store_id: '3', drug_id: '2', price: '10'}
  ])

## States ##
States = State.create([
  { name: 'Santiago'},
  { name: 'Santo Domingo'}
  ])

## City ##
Cities = City.create([
  { name: 'Villa Maria', state_id: '1'},
  { name: 'Hoya de Caimito', state_id: '1'},
  { name: 'Bella Vista', state_id: '2'}
  ])

## Drug Store Locations ##
DSLocations = DrugStoreLocation.create([
  { state_id: '1', city_id: '1', drug_store_id: '1'},
  { state_id: '1', city_id: '1', drug_store_id: '2'},
  { state_id: '1', city_id: '2', drug_store_id: '3'}
  ])
## Payment Methods Efectivo, Tarjeta o Seguro
PaymentMethods = PaymentMethod.create([
  { name: "Efectivo", drug_store_id: '1'},
  { name: "Tarjeta", drug_store_id: '2' },
  { name: "Seguro", drug_store_id: '2'}
  ])
## Insurances if Seguro for PaymentMethod then what type of insurance?
Insurances = Insurance.create([
  { name: "Palic", drug_store_id: '2'},
  { name: "Humano", drug_store_id: '2' }
  ])
