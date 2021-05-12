class Supplier < ApplicationRecord
    has_one :account , dependent: :destroy
end

# supplier = Supplier.find(1)
# obj = supplier.build_account(---------)
# obj.save