class Acco < ApplicationRecord
    belongs_to :supp
    has_one :acco_history
end

# a = Account.find(4)
# obj = a.build_acco_history(credit_rating: 8)
# obj.save