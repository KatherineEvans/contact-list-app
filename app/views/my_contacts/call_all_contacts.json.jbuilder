json.contacts @contacts.each do |contact|
  json.id contact.id
  json.First_name contact.first_name
  json.Last_name contact.last_name
  json.Email contact.email
  json.Phone contact.phone_number
end