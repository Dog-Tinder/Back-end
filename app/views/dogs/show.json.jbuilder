json.id @dog.id
json.name @dog.name
json.age @dog.age
json.enjoys @dog.enjoys
json.photo_url polymorphic_url(@dog.photo) if @dog.photo.attached?
