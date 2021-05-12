class Account < ApplicationRecord
    belongs_to :supplier
end

#supplier = Supplier.find(1)
# obj = supplier.build_account(---------)
# obj.save