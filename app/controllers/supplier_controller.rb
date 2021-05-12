class SupplierController < ApplicationController
  def index
    @supplier = Supplier.all
    @account = Account.all
  end
        
  def show
    @supplier = Supplier.find(params[:id])
  end
        
  def new
    @supplier = Supplier.new 
  end
        
  def create
    @supplier= Supplier.new(supplier_params)
    if @supplier.save && @supplier.build_account(account_number: account_params).save 
      redirect_to @supplier
    else
      render('new')
    end        
  end
        
        
  def edit
    @supplier = Supplier.find(params[:id])
  end
  def update
    @supplier = Supplier.find(params[:id])

    if @supplier.update(supplier_params)
      redirect_to(supplier_index_path)
    else
      render('edit')
    end
  end
        
  def delete
    @supplier = Supplier.find(params[:id])
  end
  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
    redirect_to(supplier_index_path)
  end
    
  private
  def supplier_params
    params.required(:supplier).permit(:name)
  end
  def account_params
    params.required(:supplier).permit(:account)
  end
end
