class BanksController < ApplicationController

  before_action :authenticate_user!
  def index
    @banks = Bank.all
  end

  def show
    @bank = Bank.find(params[:id])
  end

  def new
    @bank = Bank.new
  end

  def create
    @bank = Bank.new(bank_params)
    if @bank.save
      redirect_to @bank, :notice => "Successfully created bank."
    else
      flash[:notice] = "Error creating bank."
      render :action => 'new'
    end
  end

  def edit
    @bank = Bank.find(params[:id])
  end

  def update
    @bank = Bank.find(params[:id])
    if @bank.update(params[:bank].permit(:name))
      redirect_to @bank, :notice  => "Successfully updated bank."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @sup = Supplier.where(:bank_id => params[:id])
    if @sup.blank?
    @bank = Bank.find(params[:id])
    @bank.destroy
    redirect_to banks_url, :notice => "Successfully destroyed bank."
    else
      redirect_to banks_url, :notice => "Bank is in use. Delete the supplier first or change bank."
    end

  end

  private

  def bank_params
    params.require(:bank).permit(:name)
  end
end
