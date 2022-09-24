json.extract! user, :id, :Prénom, :Nom, :Email, :Date_de_naissance, :Numéro, :Description, :created_at, :updated_at
json.url user_url(user, format: :json)
