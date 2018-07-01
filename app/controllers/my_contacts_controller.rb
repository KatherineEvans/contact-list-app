class MyContactsController < ApplicationController
  def show
    @contact = MyContact.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @contact = MyContact.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
      phone_number: params["phone_number"]
    )
    @contact.save
    render "show.json.jbuilder"
  end

  def index
    @contacts = MyContact.all
    render "index.json.jbuilder"
  end

end
