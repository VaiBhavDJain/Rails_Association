class Product < ApplicationRecord
    has_many :pictures, as: :imageable
end


# Polymorphic Association

# Model :- Employee,Product -- Picture

# emp=Employee.create(name: "Vaibhav")
# emp.pictures.create(name: "My_pic")
# emp.pictures

# pro=Product.create(name: "Mobile")
# pro.pictures.create(name: "Product image1")
# pro.pictures