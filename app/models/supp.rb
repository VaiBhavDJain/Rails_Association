class Supp < ApplicationRecord
    has_one :acco , dependent: :destroy
  has_one :acco_history, through: :acco 
  
  accepts_nested_attributes_for :acco_history
end

# sup = Supp.find(4)
# obj = sup.build_acco(account_number: 101)
# obj.save