class MyContactsController < ApplicationController
  
  def index
    @contacts = MyContact.all.order(:id)
    

    search = params[:fname]
    if search
      @contacts = @contacts.where("first_name ILIKE ?", "%#{search}%")
    end

    search = params[:lname]
    if search
      @contacts = @contacts.where("last_name ILIKE ?", "%#{search}%")
    end

    search = params[:email]
    if search
      @contacts = @contacts.where("email ILIKE ?", "%#{search}%")
    end

    render "index.json.jbuilder"
  end

  def create
    @contact = MyContact.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      middle_name: params["middle_name"],
      email: params["email"],
      phone_number: params["phone_number"],
      bio: params["bio"]
    )
    
    if @contact.save
      render "show.json.jbuilder"
    else
      render json: {error: @contact.errors.full_messages}, status: 416
    end

  end

  def show
    @contact = MyContact.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @contact = MyContact.find_by(id: params[:id])
    @contact.first_name = params["first_name"] || @contact.first_name
    @contact.last_name = params["last_name"] || @contact.last_name
    @contact.middle_name = params["middle_name"] || @contact.middle_name
    @contact.email = params["email"] || @contact.email
    @contact.phone_number = params["phone_number"] || @contact.phone_number
    @contact.bio = params["bio"] || @contact.bio
    
    if @contact.save
      render "show.json.jbuilder"
    else
      render json: {error: @contact.errors.full_messages}, status: 416
    end
  end

  def destroy
    @contact = MyContact.find_by(id: params[:id])
    @contact.destroy
    render json: {message: "Contact has been deleted"}
  end

end
