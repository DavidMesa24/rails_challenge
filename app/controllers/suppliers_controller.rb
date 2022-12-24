class SuppliersController < ApplicationController
  before_action :authenticate_user!
  def index
    @suppliers = Supplier.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @par = supplier_params
    @par[:bank_id] = Bank.find(@par[:bank_id]).id
    @supplier = Supplier.new(@par)
    if @supplier.save
      redirect_to @supplier, :notice => "Successfully created supplier."
    else
      flash[:notice] = "Error creating supplier."
      render :action => 'new'
    end
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    @supplier = Supplier.find(params[:id])
    if @supplier.update(params[:supplier].permit(:name, :nit, :contact_name , :contact_cel, :contact_email, :bank_id, :account_number))
      redirect_to @supplier, :notice  => "Successfully updated supplier."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
    redirect_to suppliers_url, :notice => "Successfully destroyed supplier."
  end

  private

  def supplier_params
    params.require(:supplier).permit(:name, :nit, :contact_name , :contact_cel, :contact_email, :bank_id, :account_number)
  end

end
