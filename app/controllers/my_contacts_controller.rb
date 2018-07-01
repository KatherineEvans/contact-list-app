class MyContactsController < ApplicationController
  
  def index
    @contacts = MyContact.all
    render "index.json.jbuilder"
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

  def show
    @contact = MyContact.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @contact = MyContact.find_by(id: params[:id])
    @contact.first_name = params["first_name"] || @contact.first_name
    @contact.last_name = params["last_name"] || @contact.last_name
    @contact.email = params["email"] || @contact.email
    @contact.phone_number = params["phone_number"] || @contact.phone_number
    @contact.save
    render "show.json.jbuilder"
  end

  def destroy
    @contact = MyContact.find_by(id: params[:id])
    @contact.destroy
    render json: {message: "Contact has been deleted"}
  end

end
