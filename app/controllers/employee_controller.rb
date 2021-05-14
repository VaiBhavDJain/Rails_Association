class EmployeeController < ApplicationController
      def index
        @employee = Employee.all
        @product = Product.all
        @picture = Picture.all
      end
                  
      def show
        @employee = Employee.find(params[:id])
      end
      
      def show_product
        @product = Product.find(params.require(:employee_id))
      end
                  
      def new
        @employee = Employee.new
      end
                  
      def create
        @employee= Employee.new(employee_params)
        if @employee.save 
          redirect_to @employee
        else
          render('new')
        end        
      end

    
      def create_product
        @product = Product.new(product_params)
        if @product.save
            @employee = Employee.all
            @product = Product.all
            @picture = Picture.all
            render('index')
        else
            render('show')
        end
      end
      
      def create_employee_picture

        @employee = Employee.find(employee_id_params)
        if @employee.pictures.create(employee_picture_create_params)
            render('show')
        else
            render('show')
        end
      end

      def create_product_picture
        @product = Product.find(params.require(:employee_id))

        if @product.pictures.create(employee_picture_create_params)
            @employee = Employee.all
            @product = Product.all
            @picture = Picture.all
            render('index')
        else
            render('show')
        end
      end
                  
      def edit
        @employee = Employee.find(params[:id])
      end
      def update
        @employee = Employee.find(params[:id])
    
        if @employee.update(employee_params)
            redirect_to(employee_index_path)
        else
            render('edit')
        end
     end
                  
      def delete
        @employee = Employee.find(params[:id])
      end
      def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy
        redirect_to(employee_index_path)
      end
              
      private
      def employee_params
        params.required(:employee).permit(:name)
      end
      def product_params
        params.require(:product).permit(:name)
      end
      def employee_id_params
        params.required(:employee_id)
      end
      def employee_picture_create_params
        params.require(:picture).permit(:name)
      end  
    
end
