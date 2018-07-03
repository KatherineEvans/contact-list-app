json.array! @contacts.each do |contact|
  json.id contact.id
  json.First_name contact.first_name
  json.Middle_name contact.middle_name
  json.Last_name contact.last_name
  json.Bio contact.bio
  json.Email contact.email
  json.Phone contact.phone_number
  json.Alt_phone contact.japan_phone
end