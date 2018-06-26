class MyContactsController < ApplicationController
  def call_contact_method
    @contact = MyContact.first
    render "call_contact.json.jbuilder"
  end

  def call_all_contacts_method
    @contacts = MyContact.all
    render "call_all_contacts.json.jbuilder"
  end

end
