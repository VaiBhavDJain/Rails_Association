class Supp < ApplicationRecord
    has_one :acco
  has_one :acco_history, through: :acco
end

# sup = Supp.find(4)
# obj = sup.build_acco(account_number: 101)
# obj.save