class ContactsController < ApplicationController
  def index
    @contacts = Contact.all().order(last_name: :desc)
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(params.require(:contact).permit(:last_name, :first_name, :email, :phone_number))
      flash[:success] = "The Contact \"#{@contact.first_name} #{@contact.last_name} \" has been created Successfully!"
      redirect_to contacts_path
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    flash[:success] = "The Contact \"#{@contact.first_name} #{@contact.last_name} \" has been deleted successfully!"
    redirect_to contacts_path
  end

  def update
  end
end
