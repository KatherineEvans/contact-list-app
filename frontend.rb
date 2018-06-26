require "unirest"

response = Unirest.get("http://localhost:3000/one_contact_url")
contact = response.body
p contact
puts JSON.pretty_generate(contact)