class MyContactsController < ApplicationController
  def one_contact_method
    @contact = MyContact.first
    render "call_contact.json.jbuilder"
  end

  def all_contacts_method
    @contacts = MyContact.all
    render "call_all_contacts.json.jbuilder"
  end

end
