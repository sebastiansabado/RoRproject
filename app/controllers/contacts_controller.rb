class ContactsController < ApplicationController
  def index
      
      if params[:search]
        @contacts = Contact.search(params[:search]).order("created_at DESC")
      else
        @contacts = Contact.all().order(last_name: :ASC)
      end
      
      if @contacts.blank? 
       flash.now[:danger] = " There was no #{params[:search]} result" 
      end 
  end
  

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(params.require(:contact).permit(:last_name.downcase, :first_name.downcase, :email.downcase, :phone_number))
      flash.now[:success] = "The Contact \"#{@contact.first_name} #{@contact.last_name} \" has been created Successfully!"
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
    flash.now[:success] = "The Contact \"#{@contact.first_name} #{@contact.last_name} \" has been deleted successfully!"
    redirect_to contacts_path
  end

  def update
    @contact = Contact.find(params[:id])
	  @contact.update(params.require(:contact).permit(:last_name, :first_name, :email, :phone_number))
	  flash.now[:success] = "The Contact \"#{@contact.first_name} #{@contact.last_name} \" has been edited successfully!"
	 redirect_to contacts_path
  end
end
