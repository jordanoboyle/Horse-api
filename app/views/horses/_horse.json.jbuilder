# json.extract! horse, :id, :created_at, :updated_at
# json.url horse_url(horse, format: :json)

json.id horse.id
json.name horse.name
json.color horse.color
json.weight horse.weight
json.price horse.price
json.created_at horse.created_at
json.updated_at horse.updated_at