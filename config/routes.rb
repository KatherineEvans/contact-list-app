Rails.application.routes.draw do
  get "/one_contact_url" => "my_contacts#one_contact_method"
  get "/all_contacts_url" => "my_contacts#all_contacts_method"
end
