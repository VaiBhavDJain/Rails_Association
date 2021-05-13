class SuppController < ApplicationController
    def index
        @supplier = Supp.all
        @account = Acco.all
        @account_history = AccoHistory.all
      end
            
      def show
        @supplier = Supp.find(params[:id])
      end
            
      def new
        @supplier = Supp.new 
      end
            
      def create
        @supplier= Supp.new(supplier_params)
        ac_number = rand(100000..999999)
        if @supplier.save && @supplier.build_acco(account_number: ac_number).save 
          @supplier.acco.build_acco_history(credit_rating: 0).save
          redirect_to @supplier
        else
          render('new')
        end        
      end
            
      def edit
        @supplier = Supp.find(params[:id])
      end
      def update
        @supplier = Supp.find(params[:id])
        if @supplier.update(supplier_params)
          redirect_to(supp_index_path)
        else
          render('edit')
        end
      end
            
      def delete
        @supplier = Supp.find(params[:id])
      end
      def destroy
        @supplier = Supp.find(params[:id])
        @supplier.destroy
        redirect_to(supp_index_path)
      end
        
      private
      def supplier_params
        params.required(:supp).permit(:name)
      end
end
# sup = Supp.create(name: "Test")
# sup.acco.acco_history(credit_rating: 9)